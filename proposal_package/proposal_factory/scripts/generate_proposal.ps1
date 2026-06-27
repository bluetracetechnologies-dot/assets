param(
  [Parameter(Mandatory=$true)]
  [string]$IntakeFile
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if (-not (Test-Path $IntakeFile)) {
  throw "Intake file not found: $IntakeFile"
}

$intake = Get-Content -Path $IntakeFile -Raw | ConvertFrom-Json

$root = Split-Path -Parent $PSScriptRoot
$templatesDir = Join-Path $root 'templates'
$outputRoot = Join-Path $root 'output'

if (-not (Test-Path $templatesDir)) {
  throw "Templates directory not found: $templatesDir"
}

$datePart = if ($intake.date) { ($intake.date -replace '-', '') } else { (Get-Date -Format 'yyyyMMdd') }
$clientKey = if ($intake.client_keyword) { $intake.client_keyword } else { 'CLIENT' }
$roleKey = if ($intake.role_keyword) { $intake.role_keyword } else { 'ROLE' }
$folderName = "JOB_${datePart}_${clientKey}_${roleKey}"
$outDir = Join-Path $outputRoot $folderName
$sourceOut = Join-Path $outDir 'source'

New-Item -ItemType Directory -Force -Path $sourceOut | Out-Null

$tokens = @{
  '{{PROJECT_NAME}}' = [string]$intake.project_name
  '{{JOB_TITLE}}' = [string]$intake.job_title
  '{{PLATFORM}}' = [string]$intake.platform
  '{{PROJECT_DOMAIN}}' = [string]$intake.project_domain
  '{{KEY_FEATURES}}' = [string]$intake.key_features
  '{{COMPANY_NAME}}' = [string]$intake.company_name
  '{{PREPARED_BY}}' = [string]$intake.prepared_by
  '{{BUDGET_USD}}' = [string]$intake.budget_usd
  '{{DURATION_LABEL}}' = [string]$intake.duration_label
  '{{PLANNED_TIMELINE}}' = [string]$intake.planned_timeline
  '{{M1_DESC}}' = [string]$intake.milestone_1_desc
  '{{M1_AMT}}' = [string]$intake.milestone_1_amount
  '{{M1_TIME}}' = [string]$intake.milestone_1_time
  '{{M2_DESC}}' = [string]$intake.milestone_2_desc
  '{{M2_AMT}}' = [string]$intake.milestone_2_amount
  '{{M2_TIME}}' = [string]$intake.milestone_2_time
  '{{M3_DESC}}' = [string]$intake.milestone_3_desc
  '{{M3_AMT}}' = [string]$intake.milestone_3_amount
  '{{M3_TIME}}' = [string]$intake.milestone_3_time
  '{{M4_DESC}}' = [string]$intake.milestone_4_desc
  '{{M4_AMT}}' = [string]$intake.milestone_4_amount
  '{{M4_TIME}}' = [string]$intake.milestone_4_time
  '{{DOC_ID}}' = [string]$intake.doc_id
  '{{VERSION}}' = [string]$intake.version
  '{{REVISION}}' = [string]$intake.revision
  '{{DATE}}' = [string]$intake.date
  '{{CLASSIFICATION}}' = [string]$intake.classification
}

Get-ChildItem -Path (Join-Path $templatesDir 'source') -File | ForEach-Object {
  $content = Get-Content -Path $_.FullName -Raw
  foreach ($k in $tokens.Keys) {
    $content = $content.Replace($k, $tokens[$k])
  }
  $target = Join-Path $sourceOut $_.Name
  Set-Content -Path $target -Value $content -Encoding utf8
}

$intakeOut = Join-Path $sourceOut 'JOB_INTAKE.json'
Get-Content -Path $IntakeFile -Raw | Set-Content -Path $intakeOut -Encoding utf8

Write-Output "Generated proposal folder: $outDir"
