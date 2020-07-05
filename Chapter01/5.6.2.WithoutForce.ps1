Set-Location $env:TEMP
New-Item FileName.txt -Force
Set-ItemProperty FileName.txt -Name Attributes -Value Hidden
Remove-Item FileName.txt

# Expects error:
#
# Remove-Item: You do not have sufficient access rights to perform this operation or the item is hidden, system, or read only.RemoveFileSystemItemUnAuthorizedAccess,Microsoft.PowerShell.Commands.RemoveItemCommand
