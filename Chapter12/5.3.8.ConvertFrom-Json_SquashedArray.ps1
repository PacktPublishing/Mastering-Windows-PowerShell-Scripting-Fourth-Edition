$content = @"
[
    { "Element": 1 }
]
"@ | ConvertFrom-Json
$content.GetType()
