@'
using namespace System.IO

$path = Join-Path $PSScriptRoot -ChildPath 'OnRemove.log'
$stream = [StreamWriter][File]::OpenWrite($path)
$stream.WriteLine('Initialising module')

$executionContext.SessionState.Module.OnRemove = {
    $stream.WriteLine('Closing log')
    $stream.Flush()
    $stream.Close()
}
'@ | Set-Content OnRemove.psm1
