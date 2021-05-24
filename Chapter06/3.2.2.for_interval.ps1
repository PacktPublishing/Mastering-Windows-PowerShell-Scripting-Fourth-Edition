for ($i = 0; $i -lt $processes.Count; $i += 3) {
    Write-Host $processes[$i].Name
}
