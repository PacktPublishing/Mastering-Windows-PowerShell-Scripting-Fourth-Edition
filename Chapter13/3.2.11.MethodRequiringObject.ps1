# Windows PowerShell only.
# Requires 3.2.2
# SimpleSOAP must be running via Visual Studio.

$service.SearchElements

# Expects output:
#
# OverloadDefinitions
# -------------------
# SOAP.Element[] SearchElements(SOAP.SearchCondition[] searchConditions)
