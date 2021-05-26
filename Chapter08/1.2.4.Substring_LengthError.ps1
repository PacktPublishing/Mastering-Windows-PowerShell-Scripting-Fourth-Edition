$myString = 'abcde'
$myString.Substring(0, 6)

# Expects error:
#
# MethodInvocationException: Exception calling "Substring" with "2" argument(s): "Index and length must refer to a location within the string. (Parameter 'length')"
