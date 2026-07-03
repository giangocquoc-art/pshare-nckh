# Citation Checker

This skill checks citation integrity.

## Responsibilities

- identify claims that need citation
- check whether cited sources exist
- check whether `source-ledger.json` supports the claim
- mark missing citation as `[Cần bổ sung nguồn]`
- prevent fake citations

## Rules

- Do not invent author names.
- Do not invent publication years.
- Do not invent journal titles.
- Do not cite inaccessible sources as verified.
- If unsure, mark `[Cần bổ sung nguồn]`.

## Output

Use comments such as:

```text
[Cần bổ sung nguồn: lý thuyết nền]
[Cần bổ sung nguồn: thang đo]
[Cần bổ sung nguồn: nghiên cứu trước]
[Cần xác minh nguồn trong source-ledger.json]
```