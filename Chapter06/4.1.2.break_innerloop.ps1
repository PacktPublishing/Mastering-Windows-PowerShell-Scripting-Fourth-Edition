$i = 1 # Initial state for i
do {
    Write-Host "i: $i"
    $k = 1 # Reset k
    while ($k -lt 5) {
        Write-Host " k: $k"
        $k++ # Increment k
        if ($i -le 2 -and $k -ge 3) {
            break
        }
    }
    $i++ # Increment i
} while ($i -le 3)

# Expects output:
#
# i: 1
#   k: 1
#   k: 2
# i: 2
#   k: 1
#   k: 2
# i: 3
#   k: 1
#   k: 2
#   k: 3
#   k: 4
