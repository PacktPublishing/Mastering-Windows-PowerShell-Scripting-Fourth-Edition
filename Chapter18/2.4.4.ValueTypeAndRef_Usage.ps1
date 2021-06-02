# Requires 3.0.3

$dateTime = Get-Date
Test-Date 01/01/2019 -DateTime ([Ref]$dateTime)

# Expects output:
#
# True

$dateTime

# Expects output similar to:
#
# 01 January 2019 00:00:00
