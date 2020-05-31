Get-Event | Remove-Event
Add-Content C:\Data\new.txt -Value value
Get-Event | Select-Object -ExpandProperty SourceEventArgs

# Expects output:
#
# ChangeType    FullPath           Name
# ----------    --------           ----
#    Changed    C:\Data\new.txt    new.txt