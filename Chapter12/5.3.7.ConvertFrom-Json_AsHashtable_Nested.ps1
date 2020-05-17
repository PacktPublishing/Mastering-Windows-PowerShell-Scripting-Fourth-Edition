$hashtable = @"
{
    "Key": "Value",
    "Nested": {
        "Key": "NestedValue"
    }
}
"@ | ConvertFrom-Json -AsHashtable
