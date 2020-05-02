[System.Text.StringBuilder]::new((Get-Date))

# Expects error:
#
# MethodException: Cannot convert argument "capacity", with value: "02/05/2020 11:12:53", for ".ctor" to type "System.Int32": "Cannot convert value "02/05/2020 11:12:53" to type "System.Int32". Error: "Invalid cast from 'DateTime' to 'Int32'.""
