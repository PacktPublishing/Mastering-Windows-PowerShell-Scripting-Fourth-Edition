$connection = New-MockObject System.Data.SqlClient.SqlConnection
$connection.Open()

# Expects error:
#
# MethodInvocationException: Exception calling "Open" with "0" argument(s): "Object reference not set to an instance of an object."
