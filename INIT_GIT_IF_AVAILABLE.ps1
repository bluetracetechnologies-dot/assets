$ErrorActionPreference = "Stop"

$repoPath = "C:\Users\ansar\Downloads\upwork projects\bluetrace-assets-staging"
Set-Location $repoPath

$gitCmd = Get-Command git -ErrorAction SilentlyContinue
if (-not $gitCmd) {
    Write-Host "Git CLI is not installed or not in PATH."
    Write-Host "Install Git, then rerun this script."
    exit 1
}

if (-not (Test-Path (Join-Path $repoPath ".git"))) {
    git init
    Write-Host "Initialized git repository."
} else {
    Write-Host "Git repository already exists."
}

if (-not (Test-Path (Join-Path $repoPath ".gitignore"))) {
    @"
*.tmp
Thumbs.db
.DS_Store
"@ | Set-Content -Path (Join-Path $repoPath ".gitignore") -Encoding utf8
}

git add .

git diff --cached --quiet
if ($LASTEXITCODE -eq 0) {
    Write-Host "No staged changes to commit."
    exit 0
}

git commit -m "docs: add ai context packs for cross-tool continuity"

Write-Host "Local commit created. Add remote and push with:"
Write-Host "git remote add origin https://github.com/bluetracetechnologies-dot/assets.git"
Write-Host "git branch -M main"
Write-Host "git push -u origin main"
