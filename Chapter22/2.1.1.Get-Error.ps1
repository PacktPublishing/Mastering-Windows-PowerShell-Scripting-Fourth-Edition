function Start-Task {
    [CmdletBinding()]
    param ( )

    Write-Error 'Something went wrong'
}
Start-Task

# Expects error:
#
# Start-Task: Something went wrong

Get-Error

# Expects error record:
#
# Exception             :
#     Type    : Microsoft.PowerShell.Commands.WriteErrorException
#     Message : Something went wrong
#     HResult : -2146233087
# CategoryInfo          : NotSpecified: (:) [Write-Error], WriteErrorException
# FullyQualifiedErrorId : Microsoft.PowerShell.Commands.WriteErrorException,Start-Task
# InvocationInfo        :
#     MyCommand        : Start-Task
#     ScriptLineNumber : 1
#     OffsetInLine     : 1
#     HistoryId        : 6
#     Line             : Start-Task
#     PositionMessage  : At line:1 char:1
#                        + Start-Task
#                        + ~~~~~~~~~~
#     InvocationName   : Start-Task
#     CommandOrigin    : Internal
# ScriptStackTrace      : at Start-Task, <No file>: line 5
#                         at <ScriptBlock>, <No file>: line 1
# PipelineIterationInfo :
