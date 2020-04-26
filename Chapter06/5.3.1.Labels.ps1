:outerLoop for ($i = 1; $i -le 5; $i++) {
    :innerLoop foreach ($value in 1..5) {
        Write-Host "$i :: $value"
        if ($value -eq $i) {
            continue outerLoop
        }
    }
}
