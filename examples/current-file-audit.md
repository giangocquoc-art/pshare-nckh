# Audit Example Based on Current Marketing-AI Manuscript

This example records the kind of issues the skill must catch.

## Detected Blocking Issues

- TOC and list pages contain `Cập nhật sau khi mở Word` placeholders.
- The abstract is about 2 pages; Euréka requires maximum 1 A4 page.
- Many paragraphs in the body are centered instead of justified.
- Main line spacing is 1.0 instead of 1.3–1.5.
- Margins are left 3 cm but top/bottom are about 2.5 cm; Euréka baseline requires top/bottom/right 2 cm.
- There are blank grid/table artifacts before the TOC and list of tables.
- Tables are visually broken in rendered pages: captions/content can detach from table bodies.
- The file contains many `[Cần bổ sung nguồn]` placeholders; acceptable in draft mode, not final mode.
- The skill must not produce `Lời cảm ơn` by default because it is not required and can create anonymity risk.

## Skill Fix Required

The skill must fail final QA for these issues and force repair before delivering a final Euréka manuscript.
