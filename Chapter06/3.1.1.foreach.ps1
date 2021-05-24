foreach ($process in Get-Process) {
    Write-Host $process.Name
}
