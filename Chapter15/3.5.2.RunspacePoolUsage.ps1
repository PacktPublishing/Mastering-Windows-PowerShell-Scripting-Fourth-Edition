$runspacePool = [RunspaceFactory]::CreateRunspacePool(1, 2)
$runspacePool.Open()
$jobs = 1..10 | ForEach-Object {
    $instance = [PowerShell]::Create().AddScript('Start-Sleep -Seconds 10')
    $instance.RunspacePool = $runspacePool
    [PSCustomObject]@{
        Id          = $instance.InstanceId
        Instance    = $instance
        AsyncResult = $instance.BeginInvoke()
    } | Add-Member State -MemberType ScriptProperty -PassThru -Value {
        $this.Instance.InvocationStateInfo.State
    }
}
