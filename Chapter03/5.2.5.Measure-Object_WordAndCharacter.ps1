Get-Content C:\Windows\WindowsUpdate.log | Measure-Object -Line -Word -Character

# Expects output:
#
# Lines    Words    Characters    Property
# -----    -----    ----------    --------
#     3       32           268