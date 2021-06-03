function Write-Content { Write-Host 'content' }
(Get-Item function:\Write-Content).ScriptBlock
