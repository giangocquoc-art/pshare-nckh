# Survey Analyzer

This skill handles real survey response data from `.xlsx`, `.csv`, Google Forms export, SPSS result tables, or verified statistical output.

Workflow: detect file type, classify questionnaire vs response data, clean columns, identify Likert items, identify variable groups, detect missing values, prepare clean dataset, call SPSS Runner or Python fallback, and create `evidence_pack.md`.

Never invent missing statistics.