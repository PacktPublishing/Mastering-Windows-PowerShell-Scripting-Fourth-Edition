$moduleManifestPath = @{
    Path      = $pwd
    ChildPath = 'build\*\*\*.psd1'
}
# Find the module manifest
$moduleManifest = Join-Path @moduleManifestPath |
    Get-Item |
    Where-Object { $_.BaseName -eq $_.Directory.Parent.Name }

$updateParams = @{
    Path                 = $moduleManifest
    DscResourcesToExport = $dscResourcesToExport
}
Update-ModuleManifest @updateParams
