$Credential = Get-Credential
Invoke-Command -ComputerName PSTEST -ScriptBlock {
    Get-ADUser -Filter * -Credential $using:Credential
}