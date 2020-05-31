Start-Job -ScriptBlock { Start-Sleep -Seconds 10 }

# Expects output similar to:
#
# Id    Name    PSJobTypeName    State      HasMoreData    Location     Command
# --    ----    -------------    -----      -----------    --------     -------
#  1    Job1    BackgroundJob    Running           True    localhost     Start-Sleep -Seconds 10

Get-Job

# Expects output matching the above, or similar to:
#
# Id    Name    PSJobTypeName    State      HasMoreData    Location     Command
# --    ----    -------------    -----      -----------    --------     -------
#  1    Job1    BackgroundJob    Running           True    localhost     Start-Sleep -Seconds 10
