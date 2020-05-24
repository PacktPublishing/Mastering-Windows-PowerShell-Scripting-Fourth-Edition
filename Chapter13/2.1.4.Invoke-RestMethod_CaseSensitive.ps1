Invoke-RestMethod -Uri https://api.github.com/search/code -Body @{
    Q = 'Get-Content language:powershell repo:powershell/powershell'
}

# Expects error:
#
# Invoke-RestMethod: {"message":"Validation Failed","errors":[{"resource":"Search","field":"q","code":"missing"}],"documentation_url":"https://developer.github.com/v3/search"}
