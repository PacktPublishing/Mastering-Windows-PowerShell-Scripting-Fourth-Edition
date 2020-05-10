Get-Module PSDesiredStateConfiguration
# Expects PSDesiredStateConfiguration not to be present

Get-DscResource | Out-Null
# Expects list of DSC resources

Get-Module PSDesiredStateConfiguration
# Expects PSDesiredStateConfiguration to be present
