Get-Process | Where-Object Path | ForEach-Object {
    $acl = Get-Acl $_.Path

    Select-Object -InputObject $_ -Property @(
        'Name'
        @{Name = 'ProcessId'; Expression = 'ID' }
        @{Name = 'FileOwner'; Expression = { $acl.Owner }}
        @{Name = 'Access';    Expression = { $acl.AccessToString }}
    )
}
