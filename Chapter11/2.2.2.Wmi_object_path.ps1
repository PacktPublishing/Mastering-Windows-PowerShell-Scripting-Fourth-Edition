(Get-CimClass Win32_Process).CimClassProperties |
    Where-Object { $_.Flags -band 'Key' }