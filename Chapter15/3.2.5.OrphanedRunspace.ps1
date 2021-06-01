$psInstance = [PowerShell]::Create().AddScript('
    1..60 | ForEach-Object {
        Add-Content -Path c:\temp\output.txt -Value $_
        Start-Sleep -Seconds 1
    }
')
$asyncResult = $psInstance.BeginInvoke()
$psInstance = $null
$asyncResult = $null