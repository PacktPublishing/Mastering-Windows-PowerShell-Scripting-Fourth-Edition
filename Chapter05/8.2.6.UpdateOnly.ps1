$hashtable = @{ Existing = "Old" }
if ($hashtable.Contains("Existing")) {
    $hashtable.Existing = "New"
}