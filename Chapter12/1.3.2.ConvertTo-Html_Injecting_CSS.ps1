Get-Process |
    ConvertTo-Html -Property Name, Id, WorkingSet -Head $css |
    Set-Content report.html