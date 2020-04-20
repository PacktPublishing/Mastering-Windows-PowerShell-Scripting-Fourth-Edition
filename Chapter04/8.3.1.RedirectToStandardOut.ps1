function Test-Redirect{
    'This is standard out'
    Write-Information 'This is information'
}
$stdOut = Test-Redirect 6>&1
$stdOut

# Expects output:
#
# This is standard out
# This is information