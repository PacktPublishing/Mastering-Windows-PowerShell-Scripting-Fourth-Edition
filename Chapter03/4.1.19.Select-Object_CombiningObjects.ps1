Get-Process | ForEach-Object {
    $acl = Get-Acl $_.Path

    $_ | Select-Object -Property @(
        'Name'
        @{Name = 'ProcessId'; Expression = 'ID' }
        @{Name = 'FileOwner'; Expression = { $acl.Owner }}
        @{Name = 'Access'; Expression = { $acl. AccessToString }}
    )
}
