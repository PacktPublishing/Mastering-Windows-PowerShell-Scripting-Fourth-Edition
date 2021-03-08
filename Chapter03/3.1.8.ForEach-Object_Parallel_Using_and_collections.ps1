$values = @{}
1..5 | ForEach-Object -Parallel {
    ($using:values).Add($_, $_)
}
$values
