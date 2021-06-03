using namespace System.Management.Automation

throw [ErrorRecord]::new(
    [InvalidOperationException]::new('Invalid operation'),
    'AnErrorID',
    [ErrorCategory]::InvalidOperation,
    $null
)
