# SPSS Runner

This skill runs or emulates SPSS-style survey analysis from real data.

## Modes

### SPSS_REAL

Use when IBM SPSS Statistics is available with a valid license.

The system should:

1. Create clean survey file.
2. Generate .sps syntax.
3. Run SPSS syntax.
4. Export SPSS output.
5. Parse output.
6. Create evidence_pack.md.

### PYTHON_FALLBACK

Use when SPSS is not available.

The system should use Python-style analysis:

- pandas for data cleaning
- numpy for numeric processing
- scipy for statistical tests
- statsmodels for regression
- factor_analyzer for EFA if available

Clearly label output as Python fallback, not SPSS output.

## Recommended SPSS Analysis

Generate syntax for:

- descriptive statistics
- reliability analysis / Cronbach Alpha
- factor analysis / EFA
- Pearson correlation
- linear regression
- output export

## Example SPSS Syntax Pattern

GET DATA
  /TYPE=XLSX
  /FILE='survey_clean.xlsx'
  /READNAMES=ON.

RELIABILITY
  /VARIABLES=KV1 KV2 KV3 KV4
  /SCALE('KV') ALL
  /MODEL=ALPHA.

FACTOR
  /VARIABLES=KV1 KV2 KV3 TT1 TT2 TT3 YD1 YD2 YD3
  /MISSING=LISTWISE
  /PRINT=KMO EXTRACTION ROTATION
  /EXTRACTION=PRINCIPAL
  /ROTATION=VARIMAX.

REGRESSION
  /DEPENDENT YD_MEAN
  /METHOD=ENTER KV_MEAN TT_MEAN NT_MEAN CP_MEAN.

OUTPUT EXPORT
  /DOC DOCUMENTFILE='spss_output.docx'.

## Hard Rules

- Never fake SPSS results.
- If SPSS cannot run, switch to Python fallback and report it.
- If raw data is insufficient, stop and ask for missing data.
- If only screenshots are provided, extract only visible values.
- Do not infer hidden SPSS values.
