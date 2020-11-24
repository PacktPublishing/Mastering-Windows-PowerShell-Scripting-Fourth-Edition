function Test-Redirect {
    'This is standard out'
    Write-Error 'This is an error'
    Write-Warning 'This is a warning'
}

Test-Redirect 3> 'warnings.txt' 2> 'errors.txt'
