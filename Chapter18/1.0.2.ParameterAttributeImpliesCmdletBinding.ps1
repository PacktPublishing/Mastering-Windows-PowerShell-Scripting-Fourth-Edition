function Test-CmdletBinding {
     param (
         [Parameter()]
         $Parameter1
     )
}
Get-Command Test-CmdletBinding | Select-Object CmdletBinding

# Expects output:
#
# CmdletBinding
# -------------
#          True
