# Pshare Core

Pshare Core is the central coordinator.

When the user types `/nckh`, Pshare Core must read input, classify it, load all required modules, start visible agent group chat logs, create or update `project.yml` and `project-state.json`, enforce STRICT mode, and stop only when the correct Word-ready output is produced or when real data is missing.

## State machine

START -> READ_INPUT -> CLASSIFY_INPUT -> LOAD_SKILLS -> CREATE_PROJECT_CONTEXT -> RUN_AGENT_GROUP_CHAT -> WRITE_CONTENT -> VALIDATE_CITATIONS -> VALIDATE_SURVEY_RULES -> BUILD_WORD -> FINAL_QA -> RETURN_DOCX

## Safety rule

If `evidence_pack.md` does not exist, do not write real quantitative findings.