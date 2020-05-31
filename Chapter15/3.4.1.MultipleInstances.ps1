$jobs = 1..5 | ForEach-Object {
    $instance = [PowerShell]::Create().AddScript('
        Start-Sleep -Seconds (Get-Random -Minimum 10 -Maximum 121)
    ')
    [PSCustomObject]@{
        Id          = $instance.InstanceId
        Instance    = $instance
        AsyncResult = $instance.BeginInvoke()
    } | Add-Member State -MemberType ScriptProperty -PassThru -Value {
        $this.Instance.InvocationStateInfo.State
    }
}