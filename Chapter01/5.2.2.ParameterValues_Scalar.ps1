Get-CimInstance -ClassName Win32_Service, Win32_Process

# Expects error:
#
# Get-CimInstance: Cannot convert 'System.Object[]' to the type 'System.String' required by parameter 'ClassName'. Specified method is not supported.
