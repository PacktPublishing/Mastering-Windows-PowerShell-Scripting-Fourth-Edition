$string = @"
Name : John Doe
Username : jdoe
"@
[PSCustomObject]($string.Replace(':', '=') | ConvertFrom-StringData)
