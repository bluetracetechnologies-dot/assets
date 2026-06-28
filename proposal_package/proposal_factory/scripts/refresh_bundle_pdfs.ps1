param(
  [Parameter(Mandatory = $true, ValueFromRemainingArguments = $true)]
  [string[]]$BundlePaths
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$drawioExe = 'C:\Program Files\draw.io\draw.io.exe'
if (-not (Test-Path $drawioExe)) {
  throw "draw.io executable not found at $drawioExe"
}

foreach ($bundle in $BundlePaths) {
  $diagDir = Join-Path $bundle 'diagrams'
  $pdfDir = Join-Path $bundle 'pdfs'

  if (-not (Test-Path $diagDir)) {
    Write-Warning "Skipping $bundle (missing diagrams folder)"
    continue
  }

  New-Item -ItemType Directory -Force -Path $pdfDir | Out-Null

  Get-ChildItem -Path $diagDir -Filter '*.drawio' -File | ForEach-Object {
    $inFile = $_.FullName
    $outFile = Join-Path $pdfDir ($_.Name + '.pdf')
    & $drawioExe --export --format pdf --output $outFile $inFile | Out-Null
    if (Test-Path $outFile) {
      Write-Output "EXPORTED: $outFile"
    } else {
      throw "Export failed for $inFile"
    }
  }
}
