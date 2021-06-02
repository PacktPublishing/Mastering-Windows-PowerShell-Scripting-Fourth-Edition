function Test-Parameter {
    param (
        [string]$ProcessName = (Get-Process -Id $PID |
            Select-Object -ExpandProperty Name)
    )
}
