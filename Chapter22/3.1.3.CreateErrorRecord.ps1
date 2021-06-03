using namespace System.Management.Automation

$numerator = 10
$denominator = 0
try {
    $numerator / $denominator
} catch {
    $errorRecord = [ErrorRecord]::new(
        [Exception]::new($_.Exception.Message),
        'InvalidDivision',   # ErrorId
        'InvalidOperation',  # ErrorCategory
        [PSCustomObject]@{  # TargetObject
            Numerator   = $numerator
            Denominator = $denominator
        }
    )
    Write-Error -ErrorRecord $errorRecord
}
