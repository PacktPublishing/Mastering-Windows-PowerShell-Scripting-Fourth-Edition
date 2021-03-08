Get-Process pwsh |
    Select-Object Name | Export-Csv .\Processes.csv
Get-Process explorer |
    Select-Object Name, Id |
    Export-Csv .\Processes.csv -Append
