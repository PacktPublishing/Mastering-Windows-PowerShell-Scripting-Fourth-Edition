@(
    'Anna'
    'Ben'
    'Chris'
    'David'
) | Where-Object { $_ -notlike 'a*' -and $_ -notlike 'b*' }
