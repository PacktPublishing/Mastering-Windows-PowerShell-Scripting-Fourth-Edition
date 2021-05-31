$file = Get-Item 'somefile.txt'
$file.Attributes = 'ReadOnly'
$file.Attributes += 'ReadOnly'
$file.Attributes