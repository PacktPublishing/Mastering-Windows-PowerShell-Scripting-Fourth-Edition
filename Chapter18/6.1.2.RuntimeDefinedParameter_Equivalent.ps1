# Cannot be pasted into the console. Must be run as a script.

param (
    [Parameter(Mandatory, Position = 1)]
    [ValidateSet('Start', 'Stop', 'Create', 'Delete')]
    [String]$Action
)
