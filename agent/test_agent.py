from datetime import date
import tempfile
from pathlib import Path
import unittest
from unittest.mock import patch

import yaml

from agent import WasteCollectionAgent, WasteCollectionEntry


class WasteCollectionAgentTests(unittest.TestCase):
    def setUp(self):
        self.agent = WasteCollectionAgent()

    def test_extract_from_html_table(self):
        html = """
        <html>
            <body>
                <table>
                    <tr><th>Date</th><th>Type</th></tr>
                    <tr><td>2026-01-12</td><td>Paper collection</td></tr>
                    <tr><td>05.02.2026</td><td>Organic pick-up area A</td></tr>
                </table>
            </body>
        </html>
        """
        entries = self.agent.extract_from_html(html)
        iso_dates = {entry.iso_date() for entry in entries}
        waste_types = {entry.waste_type for entry in entries}

        self.assertEqual(iso_dates, {"2026-01-12", "2026-02-05"})
        self.assertIn("paper", waste_types)
        self.assertIn("organic", waste_types)

    @patch("agent.waste_collection_agent.extract_text")
    def test_extract_from_pdf_text(self, extract_text_mock):
        extract_text_mock.return_value = "05.02.2026 Karton Sammlung\n12.02.2026 Bulky collection"
        entries = self.agent.extract_from_pdf(b"%PDF-1.4 sample")

        iso_dates = sorted(entry.iso_date() for entry in entries)
        waste_types = sorted(entry.waste_type for entry in entries)

        self.assertEqual(iso_dates, ["2026-02-05", "2026-02-12"])
        self.assertEqual(waste_types, ["bulky_goods", "cardboard"])

    def test_build_config_creates_file_with_entries(self):
        entries = [
            WasteCollectionEntry(col_date=date(2026, 1, 12), waste_type="paper", area="a"),
            WasteCollectionEntry(col_date=date(2026, 1, 19), waste_type="paper", area="a"),
            WasteCollectionEntry(col_date=date(2026, 2, 1), waste_type="organic", area=""),
        ]
        with tempfile.TemporaryDirectory() as temp_dir:
            output_path = Path(temp_dir) / "demo.yml"
            config = self.agent.build_config(
                region="demo",
                entries=entries,
                output_path=output_path,
                zip_code=1234,
            )

            self.assertTrue(output_path.exists())
            loaded = yaml.safe_load(output_path.read_text())
            self.assertEqual(loaded["region"], "demo")
            self.assertEqual(loaded["zip"], 1234)
            self.assertEqual(config["start_date"], "2026-01-12")
            self.assertEqual(config["end_date"], "2026-02-01")

            paper_entries = loaded["collections"]["paper"][0]["schedule"]
            self.assertEqual(paper_entries, ["2026-01-12", "2026-01-19"])


if __name__ == "__main__":
    unittest.main()
