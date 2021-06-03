using namespace System.Management.Automation.Language

$errors = $tokens = @()
$script = @'
# A short script
Write-Host 'Hello world'
'@

$ast = [Parser]::ParseInput($script,  [ref]$tokens, [ref]$errors)
