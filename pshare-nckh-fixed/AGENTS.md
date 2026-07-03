# AGENTS.md

This repository contains the Pshare NCKH skill pack.

When the user types:

```text
/nckh <research_topic>
```

activate the skill:

```text
.agents/skills/pshare-nckh/SKILL.md
```

## Meaning

The command means:

- classify input as topic only, topic with questionnaire, or topic with survey results
- use STRICT academic mode
- show visible agent group chat work logs
- do not reveal hidden chain-of-thought
- never fabricate citations
- never fabricate survey statistics
- never write Chapter 4 quantitative results without `evidence_pack.md`
- never write Chapter 5 quantitative conclusions without `evidence_pack.md`
- create Word-ready output appropriate to the available input
