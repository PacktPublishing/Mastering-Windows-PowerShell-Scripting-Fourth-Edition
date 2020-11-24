function Test-Redirect{
    'This is standard out'
    Write-Warning 'This is a warning'
}
$output = Test-Redirect 3> 'warnings.txt'
Get-Content 'warnings.txt'

# Expects output
#
# This is a warning
