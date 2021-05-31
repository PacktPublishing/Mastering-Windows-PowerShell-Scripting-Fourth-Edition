$file = Get-Item 'somefile.txt' 
$file.Attributes = $file.Attributes -bxor 'ReadOnly' 