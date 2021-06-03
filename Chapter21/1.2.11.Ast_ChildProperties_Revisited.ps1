$ast = { Get-Process -ID $PID | Select-Object Name, Path }.Ast
$ast.EndBlock.Statements[0].PipelineElements[0]
