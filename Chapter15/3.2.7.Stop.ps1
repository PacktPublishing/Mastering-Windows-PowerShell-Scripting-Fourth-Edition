$psInstance = [PowerShell]::Create()
$psInstance.AddCommand('Start-Sleep').AddParameter('Seconds', 120).BeginInvoke()
$psInstance.Stop()