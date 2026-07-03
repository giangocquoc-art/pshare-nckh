# Final QA

This skill performs final quality assurance.

## Checklist

Check:

- correct workflow was selected
- output matches available input
- no fake citations
- no fake survey statistics
- `evidence_pack.md` exists if Chapter 4 contains quantitative results
- Chapter 5 conclusions are supported by `evidence_pack.md`
- numbers in Chapter 4 and Chapter 5 match `evidence_pack.md`
- missing sources are marked
- missing data is clearly stated
- `process-log.md` is updated
- `source-ledger.json` is updated
- final file is Word-ready

## Numeric Cross-Check

If `evidence_pack.md` exists:

1. Extract all quantitative values from Chapter 4 and Chapter 5.
2. Compare them against `evidence_pack.md`.
3. If any value is not found in `evidence_pack.md`, flag error.
4. Do not release final output until fixed.

## Failure Conditions

Fail QA if:

- fabricated statistics are detected
- Chapter 4 has quantitative findings without `evidence_pack.md`
- Chapter 5 has unsupported conclusions
- citations are invented
- survey sample size is invented
- workflow output does not match input type

## Final Message

Only report:

- what was created
- what was checked
- what is missing if anything
- where the final Word-ready file is