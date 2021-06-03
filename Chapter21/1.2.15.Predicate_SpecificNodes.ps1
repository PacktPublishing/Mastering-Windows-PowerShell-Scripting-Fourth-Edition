using namespace System.Management.Automation.Language

$ast = { Get-Process -ID $PID | Select-Object Name, Path }.Ast

$predicate = {
    param ( $node )

    $node -is [CommandAst] -and
    $node.GetCommandName() -eq 'Get-Process'
}
