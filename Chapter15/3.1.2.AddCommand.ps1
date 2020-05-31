[PowerShell]::Create().
    AddCommand('Get-Process').
    AddParameter('Name', 'powershell').
    Invoke()
