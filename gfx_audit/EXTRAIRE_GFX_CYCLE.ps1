# Extraire uniquement les ressources GFX identifiees du cycle dynastique
# Usage: .\EXTRAIRE_GFX_CYCLE.ps1 -GamePath "C:\Program Files (x86)\Steam\steamapps\common\Crusader Kings III" -ConvertPng
# Ne modifie jamais les fichiers source. Le PNG est une copie optionnelle.
param(
  [Parameter(Mandatory=$true)][string]$GamePath,
  [switch]$ConvertPng
)
$ErrorActionPreference="Stop"
$source=$GamePath
if (Test-Path (Join-Path $source "game\gfx")) { $source=Join-Path $source "game" }
if (-not (Test-Path (Join-Path $source "gfx"))) { throw "Chemin incorrect : le dossier game/gfx ou gfx n'existe pas." }
$csvFile=Join-Path $PSScriptRoot "MANIFEST_GFX_EXCLUSIFS.csv"
if (-not (Test-Path $csvFile)) { throw "Manifest introuvable : $csvFile" }
$rows=Import-Csv -LiteralPath $csvFile
$temp=Join-Path ([System.IO.Path]::GetTempPath()) ("Diwan_CycleGFX_"+[guid]::NewGuid().ToString("N"))
New-Item -ItemType Directory -Path $temp -Force | Out-Null
$magick=$null
if ($ConvertPng) { $magick=Get-Command "magick.exe" -ErrorAction SilentlyContinue }
$report=@()
try {
  foreach($row in $rows) {
    $relative=$row.path.Replace("/","\")
    $full=Join-Path $source $relative
    $status="missing"
    $sha=""
    if (Test-Path -LiteralPath $full -PathType Leaf) {
      $length=(Get-Item -LiteralPath $full).Length
      # Les objets JSON de metadonnees ne sont pas des DDS utilisables.
      if ($length -lt 1000 -and ((Get-Content -LiteralPath $full -Raw -ErrorAction SilentlyContinue) -match "Binary file excluded from repository")) {
        $status="metadata_only"
      } else {
        $sha=(Get-FileHash -LiteralPath $full -Algorithm SHA256).Hash.ToLowerInvariant()
        $status=if($sha -eq $row.sha256_github){"ok"}else{"hash_different_version"}
        $dest=Join-Path $temp $relative
        New-Item -ItemType Directory -Force -Path (Split-Path $dest) | Out-Null
        Copy-Item -LiteralPath $full -Destination $dest
        if($ConvertPng -and $magick) {
          $png=[System.IO.Path]::ChangeExtension($dest,".png")
          & $magick.Source $dest $png
          if($LASTEXITCODE -ne 0){ Write-Warning "Conversion impossible : $relative" }
        }
      }
    }
    $report += [pscustomobject]@{ path=$row.path; status=$status; expected_sha256=$row.sha256_github; actual_sha256=$sha }
  }
  $report | Export-Csv -LiteralPath (Join-Path $temp "RAPPORT_EXTRACTION.csv") -NoTypeInformation -Encoding UTF8
  $zip=Join-Path $PSScriptRoot "DIWAN_Cycle_Dynastique_GFX_ORIGINAUX.zip"
  if(Test-Path $zip){Remove-Item -LiteralPath $zip -Force}
  Compress-Archive -Path (Join-Path $temp "*") -DestinationPath $zip -CompressionLevel Optimal
  Write-Host "Archive créée : $zip"
  Write-Host ("DDS récupérés : "+(@($report|Where-Object {$_.status -eq "ok" -or $_.status -eq "hash_different_version"}).Count)+" / "+$rows.Count)
  if($ConvertPng -and -not $magick){ Write-Warning "ImageMagick (magick.exe) introuvable : uniquement DDS" }
} finally {
  if(Test-Path $temp){Remove-Item -LiteralPath $temp -Recurse -Force}
}
