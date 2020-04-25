$hashtable = @{ Existing = "Value0" }
$hashtable.Add("Existing", "Value1")

# Expects error:
#
# MethodInvocationException: Exception calling "Add" with "2" argument(s): "Item has already been added. Key in dictionary: 'Existing'  Key being added: 'Existing'"
