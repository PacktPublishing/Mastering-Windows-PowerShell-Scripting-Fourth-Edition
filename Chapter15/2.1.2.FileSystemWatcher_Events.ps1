[System.IO.FileSystemWatcher]::new() |
    Get-Member -MemberType Event |
    Select-Object Name

# Expects output:
#
# Name
# ----
# Changed
# Created
# Deleted
# Disposed
# Error
# Renamed
