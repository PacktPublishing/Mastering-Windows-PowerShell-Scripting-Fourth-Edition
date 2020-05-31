$instanceInput = [System.Management.Automation.PSDataCollection[PSObject]]::new()
$instanceOutput = [System.Management.Automation.PSDataCollection[PSObject]]::new()

$psInstance = [PowerShell]::Create()
$asyncResult = $psInstance.AddScript('
    1..10 | ForEach-Object {
        Start-Sleep -Seconds 1
        $_
    }
').BeginInvoke(
    $instanceInput,
    $instanceOutput
)