Set-Location $env:TEMP
New-Item IMadeThisUp.txt -Force
Set-ItemProperty .\IMadeThisUp.txt –Name Attributes –Value Hidden
Remove-Item IMadeThisUp.txt -Force