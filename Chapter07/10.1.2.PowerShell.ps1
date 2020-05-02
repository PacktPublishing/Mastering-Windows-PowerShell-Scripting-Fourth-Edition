[PowerShell]::Create([InitialSessionState]::CreateDefault2()).
    AddCommand('Get-Command').
    AddParameter('Name', 'Get-Process').
    AddStatement().
    AddCommand('Get-Command').
    AddArgument('Get-Help').
    Invoke()
