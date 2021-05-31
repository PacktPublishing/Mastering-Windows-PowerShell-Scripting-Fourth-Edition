$params = @{
    ClassName = 'Win32_Process'
    Filter    = "ExecutablePath LIKE '{0}%'" -f @(
        $PSHOME -replace '\\', '\\'
    )
}
Get-CimInstance @params

# Expects output similar to:
#
# ProcessId Name     HandleCount WorkingSetSize VirtualSize
# --------- ----     ----------- -------------- -----------
# 14868     pwsh.exe 1114        243924992      2204239736832
# 10952     pwsh.exe 1513        180326400      2204260892672
