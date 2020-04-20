$i = 1 function Test-Redirect{
    Write-Warning "Warning $i"
}
Test-Redirect 3> 'warnings.txt'   # Overwrite

$i++
Test-Redirect 3>> 'warnings.txt'  # Append