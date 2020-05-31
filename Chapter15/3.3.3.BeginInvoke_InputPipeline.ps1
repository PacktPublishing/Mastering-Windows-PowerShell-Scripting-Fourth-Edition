$instanceInput = [System.Management.Automation.PSDataCollection[PSObject]](1..10)
$instanceOutput = [System.Management.Automation.PSDataCollection[PSObject]]::new()

$psInstance = [PowerShell]::Create()
$asyncResult = $psInstance.
    AddCommand('ForEach-Object').
    AddParameter('Process', { $_ }).
    BeginInvoke(
        $instanceInput,
        $instanceOutput
    )
