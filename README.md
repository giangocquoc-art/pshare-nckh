# Pshare NCKH

Pshare NCKH is a GitHub-shareable skill pack for Vietnamese student research papers.

Use it with:

```text
/nckh <research_topic>
```

## What it does

Pshare NCKH supports three workflows:

1. **Topic only**: creates a research direction, proposed model, hypotheses, measurement scales, and questionnaire draft.
2. **Topic with questionnaire**: writes Chapter 1, Chapter 2, Chapter 3, and questionnaire appendix, while locking quantitative Chapter 4 and Chapter 5 sections.
3. **Topic with survey results**: creates `evidence_pack.md`, writes Chapter 4 and Chapter 5 only from verified survey evidence, and checks that statistics are not fabricated.

## Main rules

- No fake citations.
- No fake survey statistics.
- No fake Cronbach Alpha, EFA, KMO, Sig., Beta, R Square, or p-value.
- No quantitative Chapter 4 without `evidence_pack.md`.
- No quantitative Chapter 5 conclusion without `evidence_pack.md`.
- Show visible agent work logs only, not hidden chain-of-thought.

## Install into another repo

Run this inside the target repo:

```powershell
irm https://raw.githubusercontent.com/giangocquoc-art/pshare-nckh/main/install.ps1 | iex
```

Then use:

```text
/nckh tên_đề_tài
```

## Academic integrity

This skill does not help bypass plagiarism detection or AI detection systems. It improves originality through real sources, real data, user-specific analysis, process logging, a source ledger, and strict evidence-based writing.