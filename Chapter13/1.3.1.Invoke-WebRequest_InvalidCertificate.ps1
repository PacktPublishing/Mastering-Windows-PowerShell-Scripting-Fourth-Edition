Invoke-WebRequest https://expired.badssl.com/

# Expects error:
#
# When using Windows PowerShell:
#
# Invoke-WebRequest : The underlying connection was closed: Could not establish trust relationship for the SSL/TLS secure channel.
#
# When using PowerShell 7:
#
# Invoke-WebRequest: The remote certificate is invalid according to the validation procedure.
