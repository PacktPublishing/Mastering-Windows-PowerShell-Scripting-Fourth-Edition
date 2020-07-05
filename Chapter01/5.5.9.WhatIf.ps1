Set-Location $env:TEMP
New-Item FileName.txt -Force
Remove-Item FileName.txt -WhatIf

# Expects WhatIf message:
#
# What if: Performing the operation "Remove File" on target "C:\Users\whoami\AppData\Local\Temp\FileName.txt".
