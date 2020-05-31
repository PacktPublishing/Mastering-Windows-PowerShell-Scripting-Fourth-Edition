New-Item C:\Audit -ItemType Directory
$watcher = [System.IO.FileSystemWatcher]::new('C:\Data')
$params = @{
    InputObject = $watcher
    EventName   = 'Changed'
    Action      = {
        $event.SourceEventArgs | Export-Csv C:\Audit\DataActivity.log -Append
    }
}
Register-ObjectEvent @params