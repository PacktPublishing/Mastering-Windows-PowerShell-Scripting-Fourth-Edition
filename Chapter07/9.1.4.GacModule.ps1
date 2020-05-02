Install-Module Gac -Scope CurrentUser
Get-GacAssembly System.Windows.Forms

# Expects output similar to:
#
# Name                    Version       Culture    PublicKeyToken      PrArch
# ----                    -------       -------    --------------      ------
# System.Windows.Forms    2.0.0.0                  b77a5c561934e089    MSIL
# System.Windows.Forms    1.0.5000.0               b77a5c561934e089    None
# System.Windows.Forms    4.0.0.0                  b77a5c561934e089    MSIL