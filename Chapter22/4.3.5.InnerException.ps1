try {
    throw 'Error'
} catch {
    $params = @{
        Exception = [InvalidOperationException]::new(
            $_.Exception.Message,
            $_.Exception
        )
        ErrorID   = 'SomeErrorID'
        Category  = 'InvalidOperation'
    }
    Write-Error @params
}
