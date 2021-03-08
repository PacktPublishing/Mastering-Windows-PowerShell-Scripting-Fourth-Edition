Get-Process -Id $PID | Get-Member -MemberType PropertySet

# Expects output:
#
#     TypeName: System.Diagnostics.Process
#
# Name               MemberType     Definition
# ----               ----------     ----------
# PSConfiguration    PropertySet    PSConfiguration {Name, Id, ...
# PSResources        PropertySet    PSResources {Name, Id, Hand...
