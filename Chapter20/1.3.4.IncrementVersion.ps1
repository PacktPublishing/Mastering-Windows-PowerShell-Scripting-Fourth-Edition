# Requires 1.3.2

$path = '.\LocalMachine.psd1'
$manifest = Test-ModuleManifest -Path $path
$newVersion = [Version]::new(
     $manifest.Version.Major + 1,
     $manifest.Version.Minor,
     $manifest.Version.Build
)
Update-ModuleManifest -Path $path -ModuleVersion $newVersion
