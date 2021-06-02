enum MyEnum {
    First = 1
}
[MyEnum].GetEnumUnderlyingType()

# Expects output:
#
# IsPublic    IsSerial    Name      BaseType
# --------    --------    ----      --------
# True        True        Int32     System.ValueType
