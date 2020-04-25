Remove-Variable thisValue -ErrorAction SilentlyContinue
# This is still "local" scope $thisValue = "Some value"
function Test-ThisScope {
    "From Local: $local:thisValue"      # Does not exist
    "From Global: $global:thisValue"    # Accessible
    "Without scope: $thisValue"         # Accessible
}
Test-ThisScope