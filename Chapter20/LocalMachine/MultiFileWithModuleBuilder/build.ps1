using namespace System.Management.Automation.Language

Build-Module -Path (Resolve-Path -Path $PSScriptRoot\*\build.psd1)

$rootModulePath = @{
    Path      = $PSScriptRoot
    ChildPath = 'build\*\*\*.psm1'
}
$rootModule = Join-Path @rootModulePath | Resolve-Path
$tokens = $errors = $null
$ast = [Parser]::ParseFile(
    $rootModule,
    [ref]$tokens,
    [ref]$errors
)
$dscResourcesToExport = $ast.FindAll(
    {
        param ( $node )

        $node -is [TypeDefinitionAst] -and
        $node.IsClass -and
        $node.Attributes.TypeName.FullName -contains 'DscResource'
    },
    $true
).Name

if ($dscResourcesToExport) {
    $moduleManifestPath = @{
        Path      = $pwd
        ChildPath = 'build\*\*\*.psd1'
    }
    $moduleManifest = Join-Path @moduleManifestPath |
        Get-Item |
        Where-Object { $_.BaseName -eq $_.Directory.Parent.Name }

    $updateParams = @{
        Path                 = $moduleManifest
        DscResourcesToExport = $dscResourcesToExport
    }
    Update-ModuleManifest @updateParams
}
