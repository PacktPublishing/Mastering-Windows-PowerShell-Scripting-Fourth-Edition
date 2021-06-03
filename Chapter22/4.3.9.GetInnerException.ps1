try {
    throw [InvalidOperationException]::new(
        'OuterException',
        [ArgumentException]::new(
            'IntermediateException',
            [UnauthorizedAccessException]::new('InnerException')
        )
    )
} catch {
    Write-Host $_.Exception.InnerException.Message
}
