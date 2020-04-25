Remove-Variable thisValue -ErrorAction SilentlyContinue
$Local:thisValue = "Some value"
"From Local: $local:thisValue"          # Accessible
"From Global: $global:thisValue"        # Accessible
function Test-ThisScope {
    "From Local: $local:thisValue"      # Does not exist
    "From Global: $global:thisValue"    # Accessible
}
Test-ThisScope