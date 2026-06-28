param(
  [string]$OutputRoot = ".\proposal_package\proposal_factory\output",
  [string]$PortfolioRoot = ".\proposal_package\upwork_portfolio"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if (-not (Test-Path $OutputRoot)) {
  throw "Output root not found: $OutputRoot"
}

New-Item -ItemType Directory -Force -Path $PortfolioRoot | Out-Null

$bundles = Get-ChildItem -Path $OutputRoot -Directory | Sort-Object Name
$items = @()

foreach ($bundle in $bundles) {
  $refPath = Join-Path $bundle.FullName 'JOB_REFERENCE.txt'
  $hasRef = Test-Path $refPath

  $jobTitle = $bundle.Name
  $category = ''
  $contractType = ''
  $budget = ''
  $projectLength = ''

  if ($hasRef) {
    $lines = Get-Content -Path $refPath
    for ($i = 0; $i -lt $lines.Count; $i++) {
      if ($lines[$i] -match '^Job Title:\s*$' -and ($i + 1) -lt $lines.Count) {
        $jobTitle = $lines[$i + 1].Trim()
      }
      if ($lines[$i] -match '^Category:\s*$' -and ($i + 1) -lt $lines.Count) {
        $category = $lines[$i + 1].Trim()
      }
      if ($lines[$i] -match '^Contract Type:\s*$' -and ($i + 1) -lt $lines.Count) {
        $contractType = $lines[$i + 1].Trim()
      }
      if ($lines[$i] -match '^(Budget|Bid Rate):\s*$' -and ($i + 1) -lt $lines.Count) {
        $budget = $lines[$i + 1].Trim()
      }
      if ($lines[$i] -match '^Project Length:\s*$' -and ($i + 1) -lt $lines.Count) {
        $projectLength = $lines[$i + 1].Trim()
      }
    }
  }

  $items += [pscustomobject]@{
    BundleName    = $bundle.Name
    JobTitle      = $jobTitle
    Category      = $category
    ContractType  = $contractType
    BudgetOrRate  = $budget
    ProjectLength = $projectLength
    HasReference  = $hasRef
  }
}

$totalBundles = $items.Count
$documentedBundles = ($items | Where-Object { $_.HasReference }).Count
$undocumentedBundles = $totalBundles - $documentedBundles

$today = Get-Date -Format 'yyyy-MM-dd'

$mdPath = Join-Path $PortfolioRoot 'PROJECTS_COMPLETE_INDEX.md'
$txtPath = Join-Path $PortfolioRoot 'UPWORK_PORTFOLIO_PROJECTS.txt'
$csvPath = Join-Path $PortfolioRoot 'PROJECTS_COMPLETE_INDEX.csv'

$md = @()
$md += '# Projects Complete Index'
$md += ''
$md += "Generated: $today"
$md += ''
$md += "- Total job bundles: $totalBundles"
$md += "- Documented bundles (with JOB_REFERENCE): $documentedBundles"
$md += "- Bundles needing JOB_REFERENCE completion: $undocumentedBundles"
$md += ''
$md += '## Upwork Portfolio Summary'
$md += '- Agency: Bluetrace Technologies Pvt. Ltd.'
$md += '- Primary focus: Embedded systems, PCB design, app integration, RF/AI modeling'
$md += ''
$md += '## Projects Table'
$md += '| # | Job Title | Category | Contract | Budget/Rate | Length | Bundle Folder |'
$md += '|---|---|---|---|---|---|---|'

$idx = 1
foreach ($row in $items) {
  $title = $row.JobTitle.Replace('|', '/').Trim()
  $cat = ($row.Category -replace '\|', '/').Trim()
  $ct = ($row.ContractType -replace '\|', '/').Trim()
  $bud = ($row.BudgetOrRate -replace '\|', '/').Trim()
  $len = ($row.ProjectLength -replace '\|', '/').Trim()
  $bundle = $row.BundleName.Replace('|', '/')
  $md += "| $idx | $title | $cat | $ct | $bud | $len | $bundle |"
  $idx++
}

Set-Content -Path $mdPath -Value ($md -join "`r`n") -Encoding utf8

$txt = @()
$txt += 'UPWORK PORTFOLIO PROJECTS (COPY-PASTE READY)'
$txt += ''
$txt += "Generated: $today"
$txt += "Total projects in factory output: $totalBundles"
$txt += "Documented projects: $documentedBundles"
$txt += ''
$txt += 'Completed Project Highlights:'

$n = 1
foreach ($row in ($items | Where-Object { $_.HasReference })) {
  $line = "${n}) $($row.JobTitle)"
  if ($row.Category) { $line += " | $($row.Category)" }
  if ($row.ContractType) { $line += " | $($row.ContractType)" }
  if ($row.BudgetOrRate) { $line += " | $($row.BudgetOrRate)" }
  if ($row.ProjectLength) { $line += " | $($row.ProjectLength)" }
  $txt += $line
  $n++
}

if ($undocumentedBundles -gt 0) {
  $txt += ''
  $txt += 'Folders missing JOB_REFERENCE (complete these if needed for portfolio quality):'
  foreach ($row in ($items | Where-Object { -not $_.HasReference })) {
    $txt += "- $($row.BundleName)"
  }
}

Set-Content -Path $txtPath -Value ($txt -join "`r`n") -Encoding utf8

$items | Export-Csv -Path $csvPath -NoTypeInformation -Encoding utf8

Write-Output "Portfolio generated: $PortfolioRoot"
Write-Output "Totals => Bundles: $totalBundles, Documented: $documentedBundles, MissingReference: $undocumentedBundles"
