[PowerShell]::Create().
    AddCommand('Get-Process').AddParameter('Name', 'powershell').
    AddStatement().
    AddCommand('Get-Service').
    AddCommand('Select-Object').AddParameter('First', 1).
    Invoke()
