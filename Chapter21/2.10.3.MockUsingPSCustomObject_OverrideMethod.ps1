$object = [PSCustomObject]@{}
$object |
    Add-Member ToString -MemberType ScriptMethod -Force -Value { }
$object
