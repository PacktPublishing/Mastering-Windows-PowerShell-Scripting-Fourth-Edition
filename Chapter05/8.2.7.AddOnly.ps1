$hashtable = @{ Existing = "Old" }
if (-not $hashtable.Contains("New")) {
    $hashtable.New = "New"
}