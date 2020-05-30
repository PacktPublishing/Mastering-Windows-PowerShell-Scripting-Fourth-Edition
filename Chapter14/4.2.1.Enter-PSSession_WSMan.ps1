# Run on Linux. Assumes Enable-PSRemoting has been run in PowerShell Core.

$params = @{
    HostName          = 'WindowsSystemNameOrIPAddress'
    Credential        = (Get-Credential)
    Authentication    = 'Basic'
    UseSSL            = $true
    ConfigurationName = 'PowerShell.6.1.1'
}
Enter-PSSession @params