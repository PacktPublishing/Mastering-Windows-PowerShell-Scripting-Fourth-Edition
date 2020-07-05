$params = @{}
if ($Credential) {
    $params['Credential'] = $Credential
}
Get-ADUser 'Enabled -eq $true' @params
