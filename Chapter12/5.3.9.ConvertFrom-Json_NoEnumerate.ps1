$content = @"
[
    { "Element": 1 }
]
"@ | ConvertFrom-Json -NoEnumerate
$content.GetType()
