$params = @{
    Message  = 'Message'
    Category = 'InvalidOperation'
    ErrorID  = 'UniqueID'
}
Write-Error @params
