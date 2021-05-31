$string = @'
Name: Ruth
Job title: Programmer
Language: C#
Level: Senior
'@

$properties = [Ordered]@{}
[Regex]::Matches(
    $string,
    '^(?<Key>[^:]+): (?<Value>.+)$',
    'Multiline'
) | ForEach-Object {
    $properties[$_.Groups['Key'].Value] = $_.Groups['Value'].Value
}
[PSCustomObject]$properties

# Expects output:
#
# Name    Job title     Language    Level
# ----    ---------     --------    -----
# Ruth    Programmer    C#          Senior
