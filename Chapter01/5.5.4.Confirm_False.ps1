Set-Location $env:TEMP
New-Item FileName.txt -Force
Remove-Item FileName.txt -Confirm:$false
