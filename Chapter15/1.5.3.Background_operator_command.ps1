$job = Get-Process &
$job.Command

# Expects output:
#
# Microsoft.PowerShell.Management\Set-Location -LiteralPath $using:pwd ; Get-Process
