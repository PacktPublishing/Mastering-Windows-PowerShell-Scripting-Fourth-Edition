using namespace System.Management.Automation

try {
    [DateTime]::DaysInMonth(2019, 13)
} catch [MethodInvocationException] {
    Write-Host 'Caught a method invocation exception'
}
