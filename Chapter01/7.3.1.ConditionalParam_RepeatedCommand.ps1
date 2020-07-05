if ($Credential) {
    Get-ADUser 'Enabled -eq $true' -Credential $Credential
} else {
    Get-ADUser 'Enabled -eq $true'
}
