$stringBuilder = [System.Text.StringBuilder]::new()
$stringBuilder.Append('Hello') | Out-Null
$stringBuilder.AppendLine() | Out-Null
$stringBuilder.AppendLine('World') | Out-Null
