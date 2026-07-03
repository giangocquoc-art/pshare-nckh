# Survey Analyzer

This skill handles real survey response data.

Use only when the user provides:

- .xlsx
- .csv
- Google Forms export
- SPSS result tables
- questionnaire response data
- verified statistical output

## Workflow

1. Detect file type.
2. Detect whether the file is questionnaire or response data.
3. Clean column names.
4. Identify Likert items.
5. Identify variable groups by item codes.
6. Detect missing values.
7. Detect invalid responses if rules are available.
8. Prepare clean dataset.
9. Call SPSS Runner or Python fallback.
10. Create evidence_pack.md.

## Data Cleaning Rules

- Do not remove responses unless there is a clear rule.
- Report removed responses.
- Preserve raw data.
- Create survey_clean.csv when possible.
- Keep a log of cleaning decisions.

## Output

Create:

- analysis/evidence_pack.md
- analysis/survey_clean.csv
- analysis/descriptive.json
- analysis/cronbach.json
- analysis/efa.json when available
- analysis/regression.json when available

## Forbidden

Never invent missing statistics.

If a test cannot be run, say why.
