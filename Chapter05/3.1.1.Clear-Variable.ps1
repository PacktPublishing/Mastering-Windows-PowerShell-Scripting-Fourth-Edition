$temporaryValue = "Some-Value"
Write-Host $temporaryValue -ForegroundColor Green

# Expects output:
#
# Some-Value

Clear-Variable temporaryValue
Write-Host $temporaryValue -ForegroundColor Green

# Expects no output