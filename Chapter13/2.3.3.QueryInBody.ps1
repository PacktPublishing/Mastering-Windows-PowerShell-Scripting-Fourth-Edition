Invoke-RestMethod -Uri https://api.github.com/search/code -Body @{
    q = 'Get-Content language:powershell repo:powershell/powershell'
}
