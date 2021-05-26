Get-Process -Id $pid |
    Select-Object Name, Id, Path |
    Export-Csv 'somefile.csv'
Import-Csv somefile.csv
