Set-Content -Path commands.txt -Value 'Get-ChildItem', 'Get-Item'
Get-Command -Name Get-Content commands.txt

# Expects output:
#
# CommandType     Name                                               Version    Source
# -----------     ----                                               -------    ------
# Cmdlet          Get-Content                                        7.0.0.0    Microsoft.PowerShell.Management
