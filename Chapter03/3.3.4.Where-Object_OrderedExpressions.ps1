'Computer1', 'Computer2' | Where-Object {
    (Test-Path "\\$_\c$\temp\file.txt") -and
    (Get-Item "\\$_\c$\temp\file.txt").LastWriteTime -lt (Get-Date).AddDays(-90)
}