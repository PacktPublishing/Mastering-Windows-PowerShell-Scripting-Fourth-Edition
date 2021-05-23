$object1 = $object2 = Get-Process | Select-Object -First 1
Remove-Variable object1
Write-Host $object2.Name

# Expects similar to:
#
# conhost