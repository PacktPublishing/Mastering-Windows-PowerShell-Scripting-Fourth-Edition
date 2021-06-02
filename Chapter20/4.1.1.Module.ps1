New-Module SomeService {
    function GetServiceConnection {
        [CmdletBinding()]
        param ( )

        $Script:connection
    }

    function Connect-Service {
        [CmdletBinding()]
        param (
            [String]$Name
        )

        $Script:connection = $Name
    }

    $Script:connection = 'DefaultConnection'

    Export-ModuleMember -Function Connect-Service
} | Import-Module
