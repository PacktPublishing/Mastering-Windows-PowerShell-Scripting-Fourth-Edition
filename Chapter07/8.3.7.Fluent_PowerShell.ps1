[PowerShell]::Create().
    AddCommand('Get-Process').
    AddCommand('Where-Object').
    AddParameter('Property', 'Name').
    AddParameter('Value', 'pwsh').
    AddParameter('EQ', $true).
    Invoke()
