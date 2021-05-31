$content = @"
[
    { "Element": 1 }
]
"@ | ConvertFrom-Json
$content.GetType()

# Expects output:
#
# IsPublic IsSerial Name                                     BaseType
# -------- -------- ----                                     --------
# True     False    PSCustomObject                           System.Object
