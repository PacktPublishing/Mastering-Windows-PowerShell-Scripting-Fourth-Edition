Invoke-Item .                               # Open the current directory in explorer 
Invoke-Item test.ps1                        # Open test.ps1 in the default editor 
Invoke-Item $env:windir\system32\cmd.exe    # Open cmd 
Invoke-Item Cert:                           # Open the certificate store MMC for the current user 