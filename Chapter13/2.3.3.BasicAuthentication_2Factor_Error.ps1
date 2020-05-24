Invoke-RestMethod @params

# Expects error when 2-factor authentication is configured for the account:
# Invoke-RestMethod : {"message":"Must specify two-factor authentication OTP code.","documentation_url":"https://developer.github.com/v3/auth#working-with-two-factor-authentication"}