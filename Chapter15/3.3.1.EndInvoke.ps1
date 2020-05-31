$psInstance = [PowerShell]::Create()
$asyncResult = $psInstance.AddScript('1..10').BeginInvoke()
$psInstance.EndInvoke($asyncResult)