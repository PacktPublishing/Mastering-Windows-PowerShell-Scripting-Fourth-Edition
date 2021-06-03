# Requires 4.1.1

$params = @{
    ErrorVariable = 'MyErrorVariable'
    ErrorAction   = 'SilentlyContinue'
}
Invoke-Something @params
