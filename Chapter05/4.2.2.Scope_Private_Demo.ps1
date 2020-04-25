Remove-Variable thisValue -ErrorAction SilentlyContinue # This is still "local" scope

$private:thisValue = "Some value"
 "From global: $global:thisValue"           # Accessible

 function Test-ThisScope {
    "Without scope: $thisValue"            # Not accessible
    "From private: $private:thisValue"     # Not accessible
    "From global: $global:thisValue"       # Not accessible
}
Test-ThisScope