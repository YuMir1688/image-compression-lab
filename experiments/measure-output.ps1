# File-size verification for the public compression experiment.
# Research tooling | YuMir
[CmdletBinding()]
param(
    [Parameter(Mandatory=$true)][string]$Path,
    [Parameter(Mandatory=$true)][ValidateSet(20,50,100,200)][int]$TargetKB
)
$ErrorActionPreference = 'Stop'
$item = Get-Item -LiteralPath $Path
if ($item.PSIsContainer) { throw 'Supply a file, not a directory.' }
$threshold = [long]$TargetKB * 1000
[pscustomobject]@{
    file = $item.Name
    target_kb = $TargetKB
    target_bytes = $threshold
    output_bytes = $item.Length
    within_limit = ($item.Length -gt 0 -and $item.Length -le $threshold)
    output_sha256 = (Get-FileHash -LiteralPath $item.FullName -Algorithm SHA256).Hash.ToLowerInvariant()
    measured_at_utc = [DateTime]::UtcNow.ToString('o')
} | ConvertTo-Json
# This checks bytes only. It does not verify image validity, visual quality,
# dimensions, compression speed, privacy, or acceptance by a third-party portal.
