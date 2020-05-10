Set-Content -Path commands.txt -Value 'Get-ChildItem', 'Get-Item'
Get-Command -Name (Get-Content commands.txt)

# Expects output:
#
# CommandType     Name                                               Version    Source
# -----------     ----                                               -------    ------
# Cmdlet          Get-ChildItem                                      7.0.0.0    Microsoft.PowerShell.Management
# Cmdlet          Get-Item                                           7.0.0.0    Microsoft.PowerShell.Management
