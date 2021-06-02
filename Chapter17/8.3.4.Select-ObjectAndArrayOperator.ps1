Get-NetAdapter | Select-Object @(
    'Name'
    'Status'
    'MacAddress'
    LinkSpeed'
    @{ Name = 'IPAddress'; Expression = {
        ($_ | Get-NetIPAddress).IPAddress
    }}
)
