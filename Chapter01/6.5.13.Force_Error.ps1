Set-Location $env:TEMP
New-Item IMadeThisUp.txt -Force
Set-ItemProperty .\IMadeThisUp.txt –Name Attributes –Value Hidden
Remove-Item IMadeThisUp.txt

# Expects an an error:
# Remove-Item : Cannot remove item C:\Users\whoami\AppData\Local\Temp\IMadeThisUp.txt: You do not have sufficient access rights to perform this operation.