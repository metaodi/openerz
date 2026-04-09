from dataclasses import dataclass
from datetime import date, datetime
from io import BytesIO
import logging
import re
from pathlib import Path
from typing import Dict, Iterable, List, Optional, Sequence, Tuple

import yaml
from bs4 import BeautifulSoup
from pdfminer.high_level import extract_text

from openerzpy.download import download_content


log = logging.getLogger(__name__)


DATE_PATTERNS = (
    r"\b\d{4}-\d{2}-\d{2}\b",
    r"\b\d{1,2}\.\d{1,2}\.\d{2,4}\b",
)


@dataclass(frozen=True)
class WasteCollectionEntry:
    col_date: date
    waste_type: str
    area: str = ""
    description: str = ""
    station: str = ""

    def iso_date(self) -> str:
        return self.col_date.isoformat()


class WasteCollectionAgent:
    def __init__(
        self,
        waste_types_path: Optional[Path] = None,
        keyword_overrides: Optional[Dict[str, Sequence[str]]] = None,
    ) -> None:
        self.waste_types_path = waste_types_path or Path(__file__).resolve().parents[1] / "config" / "waste_types.yml"
        self.waste_types = self._load_waste_types()
        self.keyword_map = self._build_keyword_map(keyword_overrides)

    def collect_from_url(self, url: str) -> List[WasteCollectionEntry]:
        raw = download_content(url)
        if raw[:4] == b"%PDF":
            log.info("Detected PDF response for %s", url)
            return self.extract_from_pdf(raw)
        try:
            html = raw.decode("utf-8")
        except UnicodeDecodeError:
            html = raw.decode("latin1", errors="ignore")
        return self.extract_from_html(html)

    def extract_from_html(self, html: str) -> List[WasteCollectionEntry]:
        soup = BeautifulSoup(html, "html.parser")
        entries = []
        entries.extend(self._entries_from_rows(soup))
        text_lines = [line.strip() for line in soup.get_text("\n", strip=True).splitlines() if line.strip()]
        entries.extend(self._entries_from_lines(text_lines))
        return self._deduplicate(entries)

    def extract_from_pdf(self, pdf_bytes: bytes) -> List[WasteCollectionEntry]:
        text = extract_text(BytesIO(pdf_bytes))
        lines = [line.strip() for line in text.splitlines() if line.strip()]
        return self._deduplicate(self._entries_from_lines(lines))

    def build_config(
        self,
        region: str,
        entries: List[WasteCollectionEntry],
        output_path: Optional[Path] = None,
        zip_code: Optional[int] = None,
        existing_config_path: Optional[Path] = None,
        start_date: Optional[date] = None,
        end_date: Optional[date] = None,
    ) -> Dict:
        config = self._load_existing_config(existing_config_path) if existing_config_path else {}
        config.setdefault("collections", {})
        config["region"] = region
        if zip_code is not None:
            config["zip"] = zip_code

        start_date = start_date or self._min_date(entries)
        end_date = end_date or self._max_date(entries)
        if start_date:
            config["start_date"] = self._stringify_date(start_date)
        if end_date:
            config["end_date"] = self._stringify_date(end_date)

        grouped = self._group_by_collection(entries)
        for (waste_type, area, station), grouped_entries in grouped.items():
            waste_bucket = config["collections"].get(waste_type) or []
            target = self._find_matching_entry(waste_bucket, area, station)
            if target is None:
                target = {"schedule": []}
                if area:
                    target["area"] = area
                if station:
                    target["station"] = station
                waste_bucket.append(target)
            schedule = [self._stringify_schedule_value(value) for value in target.get("schedule", [])]
            for entry in sorted(grouped_entries, key=lambda item: item.col_date):
                iso_date = entry.iso_date()
                if iso_date not in schedule:
                    schedule.append(iso_date)
                if entry.description and not target.get("description"):
                    target["description"] = entry.description
            target["schedule"] = schedule
            config["collections"][waste_type] = waste_bucket

        if output_path:
            self.write_config(output_path, config)
        return config

    def write_config(self, output_path: Path, config: Dict) -> None:
        with open(output_path, "w", encoding="utf-8") as handle:
            yaml.safe_dump(config, handle, sort_keys=False, allow_unicode=False)

    def _entries_from_rows(self, soup: BeautifulSoup) -> List[WasteCollectionEntry]:
        entries = []
        for row in soup.find_all("tr"):
            cells = row.find_all(["td", "th"])
            if not cells:
                continue
            row_text = " ".join(cell.get_text(" ", strip=True) for cell in cells).strip()
            entry = self._entry_from_text(row_text)
            if entry:
                entries.append(entry)
        return entries

    def _entries_from_lines(self, lines: Iterable[str]) -> List[WasteCollectionEntry]:
        entries = []
        for line in lines:
            entry = self._entry_from_text(line)
            if entry:
                entries.append(entry)
        return entries

    def _entry_from_text(self, text: str) -> Optional[WasteCollectionEntry]:
        date_token = self._find_date_token(text)
        if not date_token:
            return None
        parsed_date = self._parse_date(date_token)
        if not parsed_date:
            return None
        waste_type = self._classify_waste_type(text)
        area = self._extract_area_hint(text)
        description = text.strip()
        return WasteCollectionEntry(
            col_date=parsed_date,
            waste_type=waste_type,
            area=area,
            description=description,
        )

    def _deduplicate(self, entries: List[WasteCollectionEntry]) -> List[WasteCollectionEntry]:
        seen = set()
        unique_entries = []
        for entry in entries:
            key = (entry.col_date, entry.waste_type, entry.area, entry.station)
            if key in seen:
                continue
            seen.add(key)
            unique_entries.append(entry)
        return unique_entries

    def _find_date_token(self, text: str) -> Optional[str]:
        earliest: Tuple[int, str] = (len(text) + 1, "")
        for pattern in DATE_PATTERNS:
            match = re.search(pattern, text)
            if match and match.start() < earliest[0]:
                earliest = (match.start(), match.group(0))
        return earliest[1] or None

    def _parse_date(self, token: str) -> Optional[date]:
        formats = ("%Y-%m-%d", "%d.%m.%Y", "%d.%m.%y")
        for fmt in formats:
            try:
                return datetime.strptime(token, fmt).date()
            except ValueError:
                continue
        return None

    def _classify_waste_type(self, text: str) -> str:
        lowered = text.lower()
        for waste_type, keywords in self.keyword_map.items():
            for keyword in keywords:
                if keyword and keyword in lowered:
                    return waste_type
        return "waste"

    def _extract_area_hint(self, text: str) -> str:
        match = re.search(r"\barea[: ]([a-z0-9]+)\b", text, flags=re.IGNORECASE)
        return match.group(1).lower() if match else ""

    def _group_by_collection(self, entries: List[WasteCollectionEntry]) -> Dict[Tuple[str, str, str], List[WasteCollectionEntry]]:
        grouped: Dict[Tuple[str, str, str], List[WasteCollectionEntry]] = {}
        for entry in entries:
            key = (entry.waste_type, entry.area, entry.station)
            grouped.setdefault(key, []).append(entry)
        return grouped

    def _find_matching_entry(self, bucket: List[Dict], area: str, station: str) -> Optional[Dict]:
        for item in bucket:
            if item.get("area", "") == area and item.get("station", "") == station:
                return item
        return None

    def _min_date(self, entries: List[WasteCollectionEntry]) -> Optional[date]:
        return min((entry.col_date for entry in entries), default=None)

    def _max_date(self, entries: List[WasteCollectionEntry]) -> Optional[date]:
        return max((entry.col_date for entry in entries), default=None)

    def _load_existing_config(self, path: Optional[Path]) -> Dict:
        if not path:
            return {}
        with open(path, encoding="utf-8") as handle:
            return yaml.safe_load(handle) or {}

    def _load_waste_types(self) -> Dict:
        with open(self.waste_types_path, encoding="utf-8") as handle:
            return yaml.safe_load(handle) or {}

    def _build_keyword_map(self, keyword_overrides: Optional[Dict[str, Sequence[str]]]) -> Dict[str, List[str]]:
        defaults: Dict[str, List[str]] = {
            "waste": ["waste", "kehricht", "rest"],
            "paper": ["paper", "papier"],
            "cardboard": ["cardboard", "karton", "carton"],
            "organic": ["organic", "bio", "green", "garden"],
            "bulky_goods": ["bulky", "sperr"],
            "metal": ["metal", "metall"],
            "special": ["special", "hazard", "elektro"],
            "textile": ["textile", "clothes", "kleider"],
            "incombustibles": ["incombustible", "gruben"],
            "mobile": ["mobile"],
            "chipping_service": ["chipping", "hacksel"],
            "oekibus": ["oekibus"],
        }
        for waste_type, meta in self.waste_types.items():
            defaults.setdefault(waste_type, [])
            defaults[waste_type].append(waste_type)
            defaults[waste_type].append(str(meta.get("name", "")).lower())
        if keyword_overrides:
            for waste_type, keywords in keyword_overrides.items():
                defaults[waste_type] = list(dict.fromkeys(keywords))
        return defaults

    def _stringify_date(self, value: date) -> str:
        return value.isoformat()

    def _stringify_schedule_value(self, value) -> str:
        if isinstance(value, date):
            return value.isoformat()
        return str(value)
