[System.Security.AccessControl.FileSystemRights].GetEnumValues() |
    Select-Object -Unique |
    ForEach-Object {
        [PSCustomObject]@{
            Name   = $_
            Value  = [Int]$_
            Binary = [Convert]::ToString([Int32]$_, 2).PadLeft(32, '0')
        }
    }
