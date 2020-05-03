$arrayMembers = (Get-Member -InputObject @() -MemberType Property, Method).Name
Get-Date | Get-Member MemberType Property, Method | Where-Object Name -notin $arrayMembers