$params = @{
    Name            = 'powershell'
    IncludeUserName = $true
}
Invoke-Command -ComputerName PSTest -ScriptBlock {
    $params = $using:params
    Get-Process @params
}