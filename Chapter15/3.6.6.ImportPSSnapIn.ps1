$warning = [System.Management.Automation.Runspaces.PSSnapInException]::new()
$initialSessionState.ImportPSSnapIn('WDeploySnapin3.0', [Ref]$warning)