$searcher = [ADSISearcher]::new(
    [ADSI]'LDAP://domain.com',
    '(&(objectClass=user)(objectCategory=person))'
)
$searcher.PageSize = 1000