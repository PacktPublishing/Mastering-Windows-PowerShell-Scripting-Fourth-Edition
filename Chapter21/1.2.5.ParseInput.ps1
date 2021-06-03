using namespace System.Management.Automation.Language

$script = @'
Write-Host
--String--
'@

$ast = [Parser]::ParseInput($script,  [ref]$null, [ref]$null)
