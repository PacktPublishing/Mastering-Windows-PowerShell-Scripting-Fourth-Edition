$session = New-PSSession PSTest
Invoke-Command -Session $session -AsJob -ScriptBlock {
    Start-Sleep -Seconds 120 'Done sleeping'
}
