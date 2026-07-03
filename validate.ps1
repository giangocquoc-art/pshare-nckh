$ErrorActionPreference = "Stop"

$SkillPath = ".agents\skills\pshare-nckh\SKILL.md"

if (!(Test-Path $SkillPath)) {
    throw "SKILL.md not found at $SkillPath"
}

$FirstLines = Get-Content $SkillPath -TotalCount 5
Write-Host "First lines of SKILL.md:"
$FirstLines | ForEach-Object { Write-Host $_ }

if ($FirstLines[0] -ne "---") {
    throw "Invalid SKILL.md frontmatter. First line must be ---"
}

if ($FirstLines[1] -notmatch "^name:\s*pshare-nckh") {
    throw "Invalid SKILL.md frontmatter. Second line must define name: pshare-nckh"
}

if (!(Test-Path "AGENTS.md")) {
    throw "AGENTS.md is missing"
}

if (!(Test-Path "install.ps1")) {
    throw "install.ps1 is missing"
}

Write-Host ""
Write-Host "Validation passed. Repo looks good."
