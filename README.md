# Pshare NCKH

**Pshare NCKH** is a GitHub-shareable skill pack for Vietnamese student research papers.

It is activated by the command:

```text
/nckh <research_topic>
```

## What It Does

Pshare NCKH supports three workflows:

1. **Topic only**
   - proposes research direction
   - creates research model
   - creates hypotheses
   - creates measurement scales
   - creates questionnaire draft

2. **Topic with questionnaire**
   - reads questionnaire
   - writes Chapter 1, Chapter 2, Chapter 3
   - adds questionnaire appendix
   - locks Chapter 4 and Chapter 5 quantitative findings until survey results exist

3. **Topic with survey results**
   - analyzes real survey data
   - creates `evidence_pack.md`
   - writes Chapter 4 and Chapter 5 only from verified evidence
   - checks that no statistic is fabricated

## Main Rules

- No fake citations.
- No fake survey statistics.
- No fake Cronbach Alpha, EFA, KMO, Sig., Beta, R Square, or p-value.
- No quantitative Chapter 4 without `evidence_pack.md`.
- No quantitative Chapter 5 conclusion without `evidence_pack.md`.
- No hidden chain-of-thought is shown.
- Only visible agent work logs are shown.

## Included Skills

- Pshare Core
- Agent Group Chat
- Research Supervisor
- Research Writer
- Questionnaire Designer
- Survey Analyzer
- SPSS Runner
- Result Inserter
- Academic Integrity Guard
- Source Ledger Manager
- Research Process Log
- Citation Checker
- Format Builder
- Final QA

## Install Into Another Repo

Run this in PowerShell inside the target repo:

```powershell
irm https://raw.githubusercontent.com/giangocquoc-art/pshare-nckh/main/install.ps1 | iex
```

Then use:

```text
/nckh ten_de_tai
```

## Academic Integrity

This skill does not help bypass plagiarism detection or AI detection systems.

It improves originality through real sources, real data, user-specific analysis, process logging, source ledger, and strict evidence-based writing.