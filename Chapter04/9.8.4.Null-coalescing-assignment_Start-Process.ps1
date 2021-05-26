$process =  Get-Process notepad -ErrorAction SilentlyContinue
$process ??= Start-Process notepad -PassThru
