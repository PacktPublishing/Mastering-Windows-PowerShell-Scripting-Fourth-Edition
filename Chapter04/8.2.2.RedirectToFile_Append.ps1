function Test-Redirect{
    Write-Warning "Warning $i"
}

$i = 1
Test-Redirect 3> 'warnings.txt'   # Overwrite

$i++
Test-Redirect 3>> 'warnings.txt'  # Append
