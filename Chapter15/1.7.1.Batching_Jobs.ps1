$objects = foreach ($value in 1..1000) {
    [PSCustomObject]@{ Value = $value }
}
$batchSize = 100

for ($i = 0; $i -lt $objects.Count; $i += $batchSize) {
    $batch = $objects[$i..($i + $batchSize)]
    $ScriptBlock = {
        # Long job set-up step
        Start-Sleep -Seconds 120

        foreach ($object in $using:batch) {
            # Perform action and create output
            $object
        }
    }
    Start-Job -ScriptBlock $ScriptBlock
}
