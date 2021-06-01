# Windows PowerShell only.
# Requires 3.2.2
# SimpleSOAP must be running via Visual Studio.

$service.GetElementsByGroup([SOAP.Group]::Nonmetal) | Format-Table

# Expects output:
#
# AtomicNumber    Symbol    Name          AtomicMass      Group
# ------------    ------    ----          ----------      -----
#            1    H         Hydrogen      1.00794(4)      Nonmetal
#            6    C         Carbon        12.0107(8)      Nonmetal
#            7    N         Nitrogen      14.0067(2)      Nonmetal
#            8    O         Oxygen        15.9994(3)      Nonmetal
#           15    P         Phosphorus    30.973762(2)    Nonmetal
#           16    S         Sulfur        32.065(5)       Nonmetal
#           34    Se        Selenium      78.96(3)        Nonmetal
