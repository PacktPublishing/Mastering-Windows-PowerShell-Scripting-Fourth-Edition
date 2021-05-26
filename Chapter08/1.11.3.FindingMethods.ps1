$arrayMembers = (Get-Member -InputObject @() -MemberType Property, Method).Name
'string' |
    Get-Member -MemberType Property, Method |
    Where-Object Name -notin $arrayMembers
