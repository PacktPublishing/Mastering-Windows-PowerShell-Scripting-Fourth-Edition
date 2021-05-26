Get-ChildItem -File |
    Where-Object LastWriteTime -gt (Get-Date).AddDays(-7)
