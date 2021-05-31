$ipAddress = [IPAddress]0    # Used as a placeholder
if ([IPAddress]::TryParse("::1", [ref]$ipAddress)) {
    $ipAddress
}
