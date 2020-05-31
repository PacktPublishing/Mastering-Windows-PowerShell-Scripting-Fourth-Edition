$psInstance = [PowerShell]::Create().
    AddCommand('Start-Sleep').AddParameter('Seconds', 300)
$asyncResult = $psInstance.BeginInvoke()
