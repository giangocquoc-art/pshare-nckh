# Euréka DOCX QA

This module is used for `.docx` inspection and repair.

## Required Inspection

Check:

- page size and margins
- font family and font size
- line spacing
- paragraph alignment and first-line indent
- page numbers and header position
- section breaks
- title page anonymity
- table of contents and list placeholders
- heading levels and numbering
- table/figure captions
- broken/blank tables
- references and citation placeholders
- hidden metadata, comments, track changes, and identifying information

## Render Gate

If tool support exists, render `.docx` to page images before final delivery.

Inspect page images for:

- clipped text
- overlapped elements
- blank grids
- captions separated from tables
- broken tables across pages
- missing page numbers
- body paragraphs accidentally centered
- abnormal empty pages

A text extraction pass is not enough; layout defects must be checked visually.

## Common Fixes

- Change main body from center alignment to justified.
- Set line spacing from 1.0 to 1.3.
- Set margins to 3/2/2/2 cm.
- Remove empty placeholder tables.
- Shorten abstract to 1 page.
- Resolve or remove `Cập nhật sau khi mở Word` placeholders.
- Resolve `[Cần bổ sung nguồn]` before final mode.
- Remove `Lời cảm ơn` and identity-bearing content unless explicitly allowed.
