Start-Transaction 
$path = 'HKCU:\TestTransaction' 
New-Item $path -ItemType Key -UseTransaction 
Set-ItemProperty $path -Name 'Name' -Value 'Transaction' -UseTransaction 
Set-ItemProperty $path -Name 'Length' -Value 20 -UseTransaction 