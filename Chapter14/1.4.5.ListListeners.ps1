Get-ChildItem WSMan:\localhost\Listener\* |
    Where-Object {
        (Get-Item "$($_.PSPath)\Transport").Value -eq 'HTTPS'
    }

# Expects output similar to:
#
# WSManConfig: Microsoft.WSMan.Management\WSMan::localhost\Listener

# Type      Keys                         Name
# ----      ----                         ----
# Container {Transport=HTTPS, Address=*} Listener_1305953032
