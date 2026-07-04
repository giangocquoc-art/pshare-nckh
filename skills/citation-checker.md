# Citation Checker

This module checks citation integrity.

## Responsibilities

- Identify claims that need citations.
- Check whether cited sources exist.
- Check whether `sources/source-ledger.json` supports the claim.
- Ensure in-text citations match the reference list.
- Ensure reference entries are complete and consistently formatted.
- Mark missing citations in draft mode.
- Prevent fake citations.

## Rules

- Do not invent author names, publication years, journal titles, publishers, DOIs, URLs, page numbers, or database details.
- Do not cite inaccessible sources as verified.
- If unsure, mark `[Cần bổ sung nguồn: ...]`.
- In final mode, no `[Cần bổ sung nguồn]` may remain.

## High-Priority Claims That Need Sources

- Definitions: Marketing, AI, intention, perceived value, trust, reputation, TPB, TAM.
- Theory/model claims.
- Scale origins and adaptations.
- Method criteria: Cronbach Alpha, EFA, KMO, Bartlett, factor loading, VIF, regression assumptions.
- Any labor-market, education-market, TP.HCM, AI adoption, or industry trend statement.
