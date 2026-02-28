# OpenERZ Waste Collection Agent

The agent discovers current waste collection dates from municipality sources and turns them into OpenERZ config files. It understands HTML pages and PDFs by looking for date patterns and mapping common keywords to OpenERZ waste types.

## Quick start

```bash
uv run python -m agent --url <source-url> --region <region-id> --output config/regions/<region-id>.yml
```

Options:
- `--config-template`: merge findings into an existing config file.
- `--zip`: set the postal code on the generated config.
- `--start-date` / `--end-date`: override the detected date range (ISO format).

The generated config follows the structure in `config/regions`, keeping existing rules and appending newly detected dates.
