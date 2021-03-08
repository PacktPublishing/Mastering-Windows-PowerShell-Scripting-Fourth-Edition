$reference = Get-ChildItem C:\Windows\System32\tcpmon*.ini
$difference = Get-ChildItem C:\Windows\SysWOW64\tcpmon*.ini
Compare-Object @($reference) @($difference) -Property Name
