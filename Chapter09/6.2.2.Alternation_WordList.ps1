Get-ChildItem -Recurse -File |
    Where-Object { $_.Name -match '(pwd|pass(word|wd)?).*\.(txt|doc)$' }