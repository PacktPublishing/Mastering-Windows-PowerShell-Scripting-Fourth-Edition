$hashtable = @(
    [IPAddress]'10.0.0.1'
    [IPAddress]'10.0.0.2'
    [IPAddress]'10.0.0.1'
) | Group-Object -AsHashtable -AsString
$hashtable['10.0.0.1']

# Expects output:
#
# AddressFamily      : InterNetwork
# ScopeId            :
# IsIPv6Multicast    : False
# IsIPv6LinkLocal    : False
# IsIPv6SiteLocal    : False
# IsIPv6Teredo       : False
# IsIPv4MappedToIPv6 : False
# Address            : 16777226
# IPAddressToString  : 10.0.0.1

# AddressFamily      : InterNetwork
# ScopeId            :
# IsIPv6Multicast    : False
# IsIPv6LinkLocal    : False
# IsIPv6SiteLocal    : False
# IsIPv6Teredo       : False
# IsIPv4MappedToIPv6 : False
# Address            : 16777226
# IPAddressToString  : 10.0.0.1
