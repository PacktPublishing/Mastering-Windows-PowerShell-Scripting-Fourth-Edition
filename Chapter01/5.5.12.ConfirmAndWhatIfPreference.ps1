$WhatIfPreference = $true
New-Item NewFile.txt -Confirm

# Expects WhatIf message:
#
# What if: Performing the operation "Create File" on target "Destination: C:\Users\whoami\AppData\Local\Temp\NewFile.txt".
