$message = 'Hello world'
Start-Job -ScriptBlock { Write-Host $using:message } |
    Receive-Job -Wait

# Expects output:
#
# Hello world
