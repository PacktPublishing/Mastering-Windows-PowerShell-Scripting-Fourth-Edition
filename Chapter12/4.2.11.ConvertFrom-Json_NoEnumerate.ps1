$content = @"
[
    "Element": { "Value": 1 }
]
"@ | ConvertFrom-Json -NoEnumerate
$content.GetType()

# Expects output:
#
# IsPublic IsSerial Name                                     BaseType
# -------- -------- ----                                     --------
# True     True     Object[]                                 System.Array
