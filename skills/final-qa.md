# Final QA

This module performs final quality assurance.

## Checklist

Pass only if:

- Workflow matches available input.
- Output matches Euréka structure.
- A4, Times New Roman 13, margins 3/2/2/2 cm, line spacing 1.3–1.5.
- Body paragraphs are justified, not centered.
- Page numbers are centered at top.
- Abstract is maximum 1 A4 page.
- No `Cập nhật sau khi mở Word` remains.
- No `[Cần bổ sung nguồn]` remains in final mode.
- No fake citations or unverifiable references.
- No fake survey statistics.
- No Chapter 4 quantitative findings without evidence pack.
- No Chapter 5 quantitative conclusions without evidence pack.
- Tables/figures are numbered, captioned, and visually intact.
- No author/school/supervisor/logo identity leak outside allowed template fields.
- Metadata/comments/track changes do not reveal identity.
- Final `.docx` was rendered and visually checked when tool support exists.

## Failure Message

If QA fails, report:

- blocking issue
- why it violates Euréka or integrity rules
- exact fix needed
- whether the file is draft-only or final-ready
