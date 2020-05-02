Enable-ImpliedReflection -Force

function Get-StrictMode {
    [CmdletBinding()]
    param (
        [Switch]$All
    )

    [Reflection.BindingFlags]$flags = 'Instance, NonPublic'

    try {
        $sessionStateScope = $executionContext.
            SessionState.
            _sessionState.CurrentScope

        $scopeEnumerator = [PowerShell].Assembly.
            GetType(
                'System.Management.Automation.SessionStateScopeEnumerator'
            ).
            GetConstructor(
                $flags,
                $null,
                $sessionStateScope.GetType(),
                $null
            ).
            Invoke($sessionStateScope)

        foreach ($sessionStateScope in $scopeEnumerator) {
            $version = $sessionStateScope.StrictModeVersion

            if ($version) {
                $version

                if (-not $All) {
                    return
                }
            }
        }
    } catch {
        throw
    }
}
