# Create the body
$body = @(
    Get-Service |
        Where-Object Status -eq 'Running' |
        ConvertTo-Html -PreContent '<h1>Services</h1>' -Property @(
            'Name'
            'DisplayName'
        ) -Fragment

    Get-Process |
        Where-Object WorkingSet -gt 50MB |
        ConvertTo-Html -PreContent '<h1>Processes</h1>' -Property @(
            'Name'
            'Id'
            'WorkingSet'
        ) -Fragment
) | Out-String

# Create a document with the merged body
ConvertTo-Html -Body $body -Title Report |
    Set-Content report.html
