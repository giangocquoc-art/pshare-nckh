$ErrorActionPreference = "Stop"

$RepoUrl = "https://github.com/giangocquoc-art/pshare-nckh.git"
$TempDir = Join-Path $env:TEMP ("pshare-nckh-" + [guid]::NewGuid().ToString())
$TargetDir = ".agents\skills\pshare-nckh"

Write-Host "Downloading Pshare NCKH..."
git clone --depth 1 $RepoUrl $TempDir

Write-Host "Installing skill..."
New-Item -ItemType Directory -Force -Path ".agents\skills" | Out-Null

if (Test-Path $TargetDir) {
    Remove-Item $TargetDir -Recurse -Force
}

Copy-Item -Path (Join-Path $TempDir ".agents\skills\pshare-nckh") -Destination $TargetDir -Recurse -Force

$AgentsBlock = @"

---

# Pshare NCKH Slash Command

When the user types:

/nckh <research_topic>

activate the skill:

.agents/skills/pshare-nckh/SKILL.md

Meaning:

- classify input as topic only, topic with questionnaire, or topic with survey results
- use STRICT academic mode
- show visible agent group chat work logs
- do not reveal hidden chain-of-thought
- never fabricate citations
- never fabricate survey statistics
- never write Chapter 4 quantitative results without evidence_pack.md
- never write Chapter 5 quantitative conclusions without evidence_pack.md
- create Word-ready output appropriate to the available input
"@

if (Test-Path "AGENTS.md") {
    $CurrentAgents = Get-Content "AGENTS.md" -Raw -Encoding UTF8
    if ($CurrentAgents -notmatch "Pshare NCKH Slash Command") {
        Add-Content -Path "AGENTS.md" -Value $AgentsBlock -Encoding UTF8
    }
} else {
    Set-Content -Path "AGENTS.md" -Value ("# AGENTS.md`n" + $AgentsBlock) -Encoding UTF8
}

Remove-Item $TempDir -Recurse -Force

Write-Host ""
Write-Host "Pshare NCKH installed successfully."
Write-Host "Use it with:"
Write-Host "/nckh <ten_de_tai>"