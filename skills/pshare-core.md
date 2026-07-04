# Pshare Core

This module routes every request through a strict, evidence-based Vietnamese student research workflow.

## Operating Mode

Default to `STRICT_EUREKA` when the paper is for Euréka.

## Visible Work Log

At the start of a task, briefly report:

- detected workflow
- available inputs
- locked sections, if any
- missing evidence or missing sources
- next action

Do not reveal hidden chain-of-thought. Do not simulate internal debate. The visible log should be concise and task-oriented.

## Workflow Safety

- If no survey data exists, lock quantitative results.
- If sources are missing, mark the exact claim as needing source in draft mode.
- If the user asks for a final file, remove or resolve all placeholders before final delivery.
- If the user asks to format a `.docx`, inspect and render when possible instead of guessing from text extraction only.
