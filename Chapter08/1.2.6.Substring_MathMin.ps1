$myString = 'abcdefghi'
$myString.Substring(0, [Math]::Min(6, $myString.Length))
