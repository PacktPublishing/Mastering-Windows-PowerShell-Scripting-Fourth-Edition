using namespace System.Management.Automation.Language

$errors = $tokens = @()
$script = @'
Write-Host
--String--
'@

$ast = [Parser]::ParseInput($script,  [ref]$tokens, [ref]$errors)
