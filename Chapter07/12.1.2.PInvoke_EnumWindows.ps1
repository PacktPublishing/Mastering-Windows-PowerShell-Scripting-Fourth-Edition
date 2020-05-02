$handles = [List[IntPtr]]::new()
$shellWindowhWnd = [WindowTools]::GetShellWindow()

$null = [WindowTools]::EnumWindows(
    {
        param (
            [IntPtr] $handle,
            [int]    $lParam
        )

        if ($handle -eq $shellWindowhWnd) {
            return $true
        }

        if (-not [WindowTools]::IsWindowVisible($handle)) {
            return $true
        }

        $handles.Add($handle)

        return $true
    },
    0
)
