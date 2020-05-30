Get-ChildItem WSMan:\localhost\Listener | ForEach-Object {
    $listener = $_ | Select-Object Name
    Get-ChildItem $_.PSPath | ForEach-Object {
        $listener | Add-Member $_.Name $_.Value
    }
    $listener
} | Where-Object Transport -eq 'HTTPS'