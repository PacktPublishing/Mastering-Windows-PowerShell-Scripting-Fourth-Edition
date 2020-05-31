Set-Content C:\Data\new.txt -Value new
Import-Csv C:\Audit\DataActivity.log

# Expects output:
#
# ChangeType    FullPath           Name
# ----------    --------           ----
# Changed       C:\Data\new.txt    new.txt
# Changed       C:\Data\new.txt    new.txt