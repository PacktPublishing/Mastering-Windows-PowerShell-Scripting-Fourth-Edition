$computerName = 'PSTest'
$session = New-PSSession -ComputerName $computerName
Import-PSSession -Session $session -Module NetAdapter