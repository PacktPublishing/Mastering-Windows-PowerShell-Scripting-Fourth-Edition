function Test-Parameter {
    param (
        [string]$Parameter1 = $(throw 'This parameter is mandatory')
    )
}
