$string = @"
Name : John Doe
Username : jdoe
"@
$string.Replace(':', '=') | ConvertFrom-StringData
