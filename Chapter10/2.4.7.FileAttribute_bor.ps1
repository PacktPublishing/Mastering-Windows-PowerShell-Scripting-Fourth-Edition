$file = Get-Item 'somefile.txt' 
$file.Attributes = $file.Attributes -bor 'ReadOnly' 