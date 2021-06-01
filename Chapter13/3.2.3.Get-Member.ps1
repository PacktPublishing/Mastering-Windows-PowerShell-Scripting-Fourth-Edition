# Windows PowerShell only.
# Requires 3.2.2
# SimpleSOAP must be running via Visual Studio.

$service | Get-Member

# Expects output:
#
# Name                MemberType  Definition
# ----                ----------  ----------
# GetElement          Method      SOAP.Element GetElement(string Name)
# GetAtomicMass       Method      string GetAtomicMass(string Name)
# GetAtomicNumber     Method      int GetAtomicNumber(string Name)
# GetElements         Method      SOAP.Element[] GetElements()
# GetElementsByGroup  Method      SOAP.Element[] GetElementsByGroup(SOAP.Group group)
# GetElementSymbol    Method      string GetElementSymbol(string Name)
# SearchElements      Method      SOAP.Element[] SearchElements(SOAP.SearchCondition[] searchConditions)
