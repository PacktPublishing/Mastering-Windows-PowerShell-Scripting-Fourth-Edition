try {
    throw 'Error'
} catch {
    $params = @{
        Exception = $_.Exception
        ErrorID   = 'SomeErrorID'
        Category  = 'InvalidOperation'
    }
    Write-Error @params
}
