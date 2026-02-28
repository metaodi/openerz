import argparse
from datetime import datetime
from pathlib import Path
import sys

import yaml

from .waste_collection_agent import WasteCollectionAgent


def _parse_date(value: str):
    return datetime.fromisoformat(value).date()


def main(argv=None):
    parser = argparse.ArgumentParser(
        description="Collect waste collection events from a URL (HTML or PDF) and update a region config file."
    )
    parser.add_argument("--url", required=True, help="Source URL containing the waste collection data.")
    parser.add_argument("--region", required=True, help="Region/municipality identifier.")
    parser.add_argument("--output", help="Path to write the generated or updated config file.")
    parser.add_argument("--config-template", help="Existing config file to merge new events into.")
    parser.add_argument("--zip", dest="zip_code", type=int, help="Zip code to set on the config.")
    parser.add_argument("--start-date", type=_parse_date, help="Override the start_date stored in the config (ISO format).")
    parser.add_argument("--end-date", type=_parse_date, help="Override the end_date stored in the config (ISO format).")

    args = parser.parse_args(argv)

    agent = WasteCollectionAgent()
    entries = agent.collect_from_url(args.url)
    config = agent.build_config(
        region=args.region,
        entries=entries,
        output_path=Path(args.output) if args.output else None,
        zip_code=args.zip_code,
        existing_config_path=Path(args.config_template) if args.config_template else None,
        start_date=args.start_date,
        end_date=args.end_date,
    )

    sys.stdout.write(f"Discovered {len(entries)} collection entries for region '{args.region}'.\n")
    if args.output:
        sys.stdout.write(f"Config written to {args.output}.\n")
    else:
        yaml.safe_dump(config, sys.stdout, sort_keys=False, allow_unicode=False)


if __name__ == "__main__":
    main()
