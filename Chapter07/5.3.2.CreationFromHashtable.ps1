$searcher = [ADSISearcher]@{
    SearchRoot = [ADSI]'LDAP://domain.com'
    Filter     = '(&(objectClass=user)(objectCategory=person))'
    PageSize   = 1000
}