Get-CimInstance Win32_ComputerSystem |
    Select-Object -Property @(
        @{n='ComputerName';e={ $_.Name }}
        'DnsHostName'
        @{n='OSInfo';e={ Get-CimInstance Win32_OperatingSystem }}
    ) |
    Select-Object * -ExpandProperty OSInfo |
    Select-Object -Property @(
        'ComputerName'
        'DnsHostName'
        @{n='OperatingSystem';e='Caption'}
        'SystemDirectory'
    )
