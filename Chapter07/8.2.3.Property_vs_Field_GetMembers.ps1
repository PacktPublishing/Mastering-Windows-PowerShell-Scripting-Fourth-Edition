[MyClass].GetMembers() | Select-Object Name, MemberType

# Expects output:
#
# Name                 MemberType
# ----                 ----------
# get_thisIsAProperty      Method
# set_thisIsAProperty      Method
# GetType                  Method
# ToString                 Method
# Equals                   Method
# GetHashCode              Method
# .ctor               Constructor
# thisIsAProperty        Property
# thisIsAField              Field
