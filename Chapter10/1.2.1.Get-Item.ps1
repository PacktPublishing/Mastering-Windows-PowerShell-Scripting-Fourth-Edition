Get-Item -Path \                            # The root container
Get-Item -Path .                            # The current container
Get-Item -Path ..                           # The parent container
Get-Item -Path C:\Windows\System32\cmd.exe  # A leaf item
Get-Item -Path Cert:\LocalMachine\Root      # A container item
