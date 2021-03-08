Get-Process | Select-Object -Property @(
    'Name'
    @{Name = 'ProcessId'; Expression = 'ID' }
    @{Name = 'FileOwner'; Expression = { (Get-Acl $_.Path).Owner }}
)
