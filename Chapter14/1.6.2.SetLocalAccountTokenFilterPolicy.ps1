$params = @{
    Path  = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'
    Name  = 'LocalAccountTokenFilterPolicy'
    Value = 1
    Force = $true
}
Set-ItemProperty @params