# Windows PowerShell only.
# Requires 3.2.2
# SimpleSOAP must be running via Visual Studio.

$service.GetAtomicNumber('oxygen')

# Expects output:
#
# 8

$service.GetAtomicMass('H')

# Expects output:
#
# 1.00794(4)
