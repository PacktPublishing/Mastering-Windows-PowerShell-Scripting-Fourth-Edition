# Code which determines if Recurse is required
$recurse = $false
Get-ChildItem c:\windows -Recurse:$recurse
