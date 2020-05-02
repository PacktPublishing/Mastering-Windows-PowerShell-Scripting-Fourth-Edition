$stringBuilder = [System.Text.StringBuilder]::new.Invoke($argumentList)
Write-Host $stringBuilder.ToString() -ForegroundColor Green

# Expects output:
#
# Initial value

$stringBuilder

# Expects output:
#
# Capacity MaxCapacity Length
# -------- ----------- ------
#       50  2147483647     13