Get-CimInstance Win32_Directory -Filter "Name='C:\\Windows'"
Get-CimInstance CIM_DataFile -Filter "Name='C:\\Windows\\System32\\cmd.exe'"
Get-CimInstance Win32_Service -Filter "State='Running'"