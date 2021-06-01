# Windows PowerShell only.
# Requires 3.2.2
# SimpleSOAP must be running via Visual Studio.

$service | Get-Member -Name GetElementsByGroup

# Expects output:
#
# Name               MemberType Definition
# ----               ---------- ----------
# GetElementsByGroup Method     SOAP.Element[] GetElementsByGroup(SOAP.Group…
