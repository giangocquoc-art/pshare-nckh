# Source Ledger Manager

This skill manages source-ledger.json.

The source ledger records which sources support which claims.

## File

sources/source-ledger.json

## Purpose

Prevent fake citations.

Make it clear:

- what source exists
- what claim it supports
- where it is used
- whether it has been verified

## Source Record Format

{
  "id": "SRC001",
  "author": "Ajzen",
  "year": 1991,
  "title": "The theory of planned behavior",
  "type": "journal article",
  "used_for": [
    "Lý thuyết hành vi dự định",
    "Giả thuyết về thái độ và ý định"
  ],
  "status": "verified"
}

## Rules

- Do not create fake source records.
- If source details are incomplete, mark status as "needs_verification".
- If a claim needs a source but none exists, mark [Cần bổ sung nguồn].
- Do not cite sources that are not in the ledger unless the user provides them.
