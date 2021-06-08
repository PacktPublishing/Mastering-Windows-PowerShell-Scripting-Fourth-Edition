# Requires $arrayMembers from 1.11.3

Get-Date |
    Get-Member -MemberType Property, Method |
    Where-Object Name -notin $arrayMembers
