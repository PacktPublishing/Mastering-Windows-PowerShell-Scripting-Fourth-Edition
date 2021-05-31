Get-SmbShareAccess -Name WmiPerms

# Expects output similar to:
#
# Name      ScopeName  AccountName  AccessControlType  AccessRight
# ----      ---------  -----------  -----------------  -----------
# WmiPerms  *          Everyone     Allow              Read
# WmiPerms  *          TITAN\Chris  Allow              Full
