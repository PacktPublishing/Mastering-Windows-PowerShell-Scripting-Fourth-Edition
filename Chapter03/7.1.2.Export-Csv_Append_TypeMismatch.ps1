Get-Process powershell | Select-Object Name, Id | Export-Csv .\Processes.csv
Get-Process explorer | Select-Object Name | Export-Csv .\Processes.csv -Append

# Expects error:
# Export-Csv : Cannot append CSV content to the following file: .\Processes.csv.
# The appended object does not have a property that corresponds to the following column: Id. To continue with mismatched properties, add the -Force parameter, and then retry the command.
# At line:2 char:51
#       + ... ershell_ise | Select-Object Name | Export-Csv .\Processes.csv -Append
#       + ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#       + CategoryInfo : InvalidData: (Id:String) [Export-Csv], InvalidOperationException
#       + FullyQualifiedErrorId : CannotAppendCsvWithMismatchedPropertyNames,Microsoft.PowerShell.Commands.ExportCsvCommand