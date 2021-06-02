# Requires 2.1.1

$object | Get-Member

# Expects output:
#
# TypeName: SomeTypeName
#
# Name           MemberType      Definition
# ----           ----------      ----------
# Equals         Method          bool Equals(System.Object obj)
# GetHashCode    Method          int GetHashCode()
# GetType        Method          type GetType()
# ToString       Method          string ToString()
# Property       NoteProperty    string Property=Value
