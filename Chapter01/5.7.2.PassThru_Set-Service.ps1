Get-Service Audiosrv |
    Set-Service -StartupType Automatic -PassThru |
    Start-Service
