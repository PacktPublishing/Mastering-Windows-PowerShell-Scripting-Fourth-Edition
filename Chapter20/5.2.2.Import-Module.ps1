# Requires 5.2.1

Import-Module -Name .\OnRemove.psm1
Get-ChildItem -Path OnRemove.log

# Expects output similar to:
#
#         Directory: C:\Workspace

# Mode                LastWriteTime         Length Name
# ----                -------------         ------ ----
# -a---        17/04/2021     10:19              0 OnRemove.log
