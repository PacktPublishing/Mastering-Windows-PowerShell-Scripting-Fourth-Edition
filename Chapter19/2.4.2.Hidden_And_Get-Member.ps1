# Requires 2.4.1

[MyClass]::new() | Get-Member Initialize -Force

# Expects output:
#
#     TypeName: MyClass

# Name          MemberType    Definition
# ----          ----------    ----------
# Initialize    Method        void Initialize()
