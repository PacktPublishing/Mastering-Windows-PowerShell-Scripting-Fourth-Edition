Get-Event | Remove-Event
Set-Content C:\Data\new.txt -Value value
Get-Event | Select-Object -ExpandProperty SourceEventArgs

# Expects output:
#
# ChangeType    FullPath           Name
# ----------    --------           ----
#    Changed    C:\Data\new.txt    new.txt
#    Changed    C:\Data\new.txt    new.txt