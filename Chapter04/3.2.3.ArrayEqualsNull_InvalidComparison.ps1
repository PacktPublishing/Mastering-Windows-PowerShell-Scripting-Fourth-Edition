$array = 1, 2, $null, $null
if ($array -eq $null) { Write-Host 'No values in array' }

# Expects output:
#
# No values in array