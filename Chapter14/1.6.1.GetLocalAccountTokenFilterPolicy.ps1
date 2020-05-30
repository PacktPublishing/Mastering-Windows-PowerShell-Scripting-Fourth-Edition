$params = @{
    Path = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'
    Name = 'LocalAccountTokenFilterPolicy'
}
Get-ItemPropertyValue @params