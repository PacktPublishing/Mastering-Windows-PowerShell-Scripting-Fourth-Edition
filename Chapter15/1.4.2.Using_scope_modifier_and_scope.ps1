function Test-UsingScope {
    # A variable in the functions local scope
    $Variable = 2
    Start-Job -ScriptBlock {
        $using:Global:Variable
    }
}
# A variable in global scope
$Variable = 1
Test-UsingScope | Receive-Job -Wait
