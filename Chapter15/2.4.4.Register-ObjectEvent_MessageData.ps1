$watcher = [System.IO.FileSystemWatcher]::new('C:\Data')
$params = @{
    InputObject = $watcher
    EventName   = 'Changed'
    Action      = {
        $user = $event.MessageData |
            Where-Object {
                $event.SourceEventArgs.Name -match $_.Expression
            } |
            Select-Object -ExpandProperty User -First 1

        $event.SourceEventArgs |
            Select-Object -Property @(
                @{Name = 'Date'; Expression = { Get-Date -Format u }}
                'ChangeType'
                'FullPath'
                @{Name = 'Responsible Person'; Expression = { $user }}
            ) |
            Export-Csv C:\Audit\DataActivity.log -Append
    }
    MessageData = @(
        [PSCustomObject]@{ Expression = '\.txt$'; User = 'Sarah' }
        [PSCustomObject]@{ Expression = '\.mdb';  User = 'Phil' }
    )
}
Register-ObjectEvent @params
