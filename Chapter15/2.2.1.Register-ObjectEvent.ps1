$watcher = [System.IO.FileSystemWatcher]::new('C:\Data')
Register-ObjectEvent -InputObject $watcher -EventName Changed
Register-ObjectEvent -InputObject $watcher -EventName Created