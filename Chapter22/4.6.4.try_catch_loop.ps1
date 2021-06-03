# Requires 4.6.1, 4.6.2, and 4.6.3

try {
    Connect-Server
    Get-ManagementObject | ForEach-Object {
        try {
            $_ | Set-ManagementObject -Property 'NewValue'
        } catch {
            Write-Error -ErrorRecord $_
        }
    }
} catch {
    throw
}
