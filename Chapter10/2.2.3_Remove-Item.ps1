$file = New-TemporaryFile
Set-Content -Path $file -Value 'Temporary: 10' 
Remove-Item $file 