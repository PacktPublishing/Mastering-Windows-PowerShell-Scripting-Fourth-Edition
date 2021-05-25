[MyClass]::new() | Get-Member

# Expects output:
#
#    TypeName: MyClass
#
# Name            MemberType Definition
# ----            ---------- ----------
# Equals          Method     bool Equals(System.Object obj)
# GetHashCode     Method     int GetHashCode()
# GetType         Method     type GetType()
# ToString        Method     string ToString()
# thisIsAField    Property   string thisIsAField {get;set;}
# thisIsAProperty Property   string thisIsAProperty {get;set;}
