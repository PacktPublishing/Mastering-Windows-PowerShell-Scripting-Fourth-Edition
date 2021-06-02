# Requires 4.1.1

& (Get-Module SomeService) { Get-Command -Module SomeService }

# Expects output:
#
# CommandType     Name                  Version    Source
# -----------     ----                  -------    ------
# Function        Connect-Service       0.0        SomeService
# Function        GetServiceConnection  0.0        SomeService
