# Source Ledger Manager

This module maintains `sources/source-ledger.json`.

## Purpose

The source ledger records which sources support which claims, theories, models, methods, scales, statistics, and definitions.

## Rules

- Do not create fake source records.
- If a source is incomplete, mark `status: needs_verification`.
- If a claim needs a source but none exists, mark the claim as `[Cần bổ sung nguồn: loại nguồn cần bổ sung]` in draft mode.
- Do not cite sources that are not in the ledger unless the user provides or the tool verifies them.
- In final mode, fail QA if the source ledger has unresolved required sources.

## Suggested Fields

```json
{
  "id": "",
  "authors": "",
  "year": "",
  "title": "",
  "container": "",
  "doi_or_url": "",
  "source_type": "journal/book/report/web",
  "status": "verified/needs_verification",
  "supports_claims": []
}
```
