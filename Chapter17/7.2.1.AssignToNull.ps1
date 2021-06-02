using namespace System.Text

$service = Get-Service | Select-Object -First 1

$stringBuilder = [StringBuilder]::new()
$null = $stringBuilder.
    AppendFormat('Name: {0}', $service.Name).
    AppendLine().
    AppendFormat('Status: {0}', $service.Status).
    AppendLine().
    AppendLine()
$stringBuilder.ToString()
