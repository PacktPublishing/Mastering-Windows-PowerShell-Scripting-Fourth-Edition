Set-Location $env:TEMP
New-Item FileName.txt -Force
Remove-Item FileName.txt -Confirm

# Expects confirmation prompt:
#
# Confirm
# Are you sure you want to perform this action?
# Performing the operation "Remove File" on target "C:\Users\whoami\AppData\Local\Temp\FileName.txt".
# [Y] Yes [A] Yes to All [N] No [L] No to All [S] Suspend [?] Help (default is "Y"):
