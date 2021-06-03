# Requires 4.3.3

Get-Error |
    Select-Object CategoryInfo, FullyQualifiedErrorId |
    Format-List

# Expects output:
#
# CategoryInfo          : OperationStopped: (Error:String) [],
#                         RuntimeException
# FullyQualifiedErrorId : Error
