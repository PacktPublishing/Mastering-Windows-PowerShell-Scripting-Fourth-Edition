$job = Start-Job { 1..10 | ForEach-Object { $_; Start-Sleep -Seconds 2 } }
Write-Host 'Sleeping 2'
Start-Sleep -Seconds 2
$job | Receive-Job
Write-Host 'Sleeping 5'
Start-Sleep -Seconds 5
$job | Receive-Job

# Expects output:
#
# Sleeping 2
# 1
# Sleeping 5
# 2
# 3
# 4