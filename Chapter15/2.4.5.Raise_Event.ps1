Set-Content C:\Data\test.mdb 1
Import-Csv C:\Audit\DataActivity.log

# Expects output similar to:
#
# Date                    ChangeType    FullPath            Responsible Person
# ----                    ----------    --------            ------------------
# 2019-02-19 18:30:04Z    Changed       C:\Data\test.mdb    Phil