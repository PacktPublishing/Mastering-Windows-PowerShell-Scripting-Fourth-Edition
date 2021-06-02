# Requires 2.6.8

$instance = [ChildClass]::new('value')

# Expects error:
#
# MethodException:
# Line |
#    2 |      ChildClass([string]$value) {
#      |                                 ~
#      | Cannot find an overload for "new" and the argument count: "0".
