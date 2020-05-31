$instanceInput = [System.Management.Automation.PSDataCollection[PSObject]](1..10)
$instanceOutput = [System.Management.Automation.PSDataCollection[PSObject]]::new()

$asyncResult = $psInstance.AddScript('
    process {
        $_
    )
').BeginInvoke(
    $instanceInput,
    $instanceOutput
)