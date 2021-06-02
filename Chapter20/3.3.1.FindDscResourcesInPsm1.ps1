using namespace System.Management.Automation.Language

# Find the root module
$rootModulePath = @{
    Path      = $pwd
    ChildPath = 'build\*\*\*.psm1'
}
$rootModule = Join-Path @rootModulePath | Resolve-Path

# These values do not need to be captured for this search process
$tokens = $errors = $null
$ast = [Parser]::ParseFile(
    $rootModule,
    [ref]$tokens,
    [ref]$errors
)
$dscResourcesToExport = $ast.FindAll({
    param ( $node )

    $node -is [TypeDefinitionAst] -and
    $node.IsClass -and
    $node.Attributes.TypeName.FullName -contains 'DscResource'
}, $true).Name
