# Open the current directory in explorer
Invoke-Item .
# Open test.ps1 in the default editor
Invoke-Item test.ps1
# Open cmd
Invoke-Item $env:windir\system32\cmd.exe
# Open the certificate store MMC for the current user
# Windows PowerShell only
Invoke-Item Cert:
