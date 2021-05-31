$query = '
SELECT Name, CreationDate
FROM Win32_Process
WHERE ProcessId={0}
' -f $PID
([WmiSearcher]$query).Get() | Select-Object @(
    'Name'
    @{
        Name = 'CreationDate'
        Expression = {
            $_.ConvertToDateTime($_.CreationDate)
        }
    }
)
