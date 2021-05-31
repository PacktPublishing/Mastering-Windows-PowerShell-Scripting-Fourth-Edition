using namespace System.Security.AccessControl

# Define an enumeration which describes the generic access mask (only)
[Flags()]
enum GenericAccessRights {
    GenericRead    = 0x80000000
    GenericWrite   = 0x40000000
    GenericExecute = 0x20000000
    GenericAll     = 0x10000000
}

# For each value to convert
foreach ($value in -536805376, 268435456) {
    # For each enum that describes the values
    $accessRights = foreach ($enum in [GenericAccessRights], [FileSystemRights]) {
        # Find values from the enum where the value with the exact bit set.
        [Enum]::GetValues($enum) | Where-Object {
            ($value -band $_) -eq $_
        }
    }
    # Output the original value and the values from the enum (as a string)
    '{0} : {1}' -f $value, ($accessRights -join ', ')
}
