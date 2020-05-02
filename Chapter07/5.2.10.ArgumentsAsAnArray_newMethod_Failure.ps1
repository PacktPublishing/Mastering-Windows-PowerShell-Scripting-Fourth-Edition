$argumentList = 'Initial value', 50
$stringBuilder = [System.Text.StringBuilder]::new($argumentList)

Write-Host $stringBuilder.ToString() -ForegroundColor Green

# Expects output:
#
# Initial value 50

$stringBuilder

# Expects output:
#
# Capacity MaxCapacity Length
# -------- ----------- ------
#       16  2147483647     16
