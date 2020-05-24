$service.GetElements() | Select-Object -First 5 | Format-Table

# Expects:
#
# AtomicNumber    Symbol    Name         AtomicMass     Group
# ------------    ------    ----         ----------     -----
#            1    H         Hydrogen     1.00794(4)     Nonmetal
#            2    He        Helium       4.002602(2)    NobleGas
#            3    Li        Lithium      6.941(2)       AlkaliMetal
#            4    Be        Beryllium    9.012182(3)    AlkalineEarthMetal
#            5    B         Boron        10.811(7)      Metalloid