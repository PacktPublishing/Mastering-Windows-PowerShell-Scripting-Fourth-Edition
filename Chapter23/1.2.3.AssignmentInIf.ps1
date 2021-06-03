$params = @{
    Name        = 'notepad'
    ErrorAction = 'SilentlyContinue'
}
if ($process = Get-Process @params) {
    Write-Host "$($process.Name) is running, ID is $($process.ID)"
} else {
    Write-Host "$($params.name) is not running"
}
