function Get-ServiceProcess {
    [CmdletBinding(DefaultParameterSetName = 'ByName')]
    param (
        [Parameter(
            Mandatory,
            Position = 1,
            ParameterSetName = 'ByName'
        )]
        [String]$Name,

        [Parameter(
            Mandatory,
            ValueFromPipeline,
            ParameterSetName = 'FromService'
        )]
        [System.ServiceProcess.ServiceController]$Service,

        [Parameter(
            Mandatory,
            ValueFromPipeline,
            ParameterSetName = 'FromCimService'
        )]
       [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#root/cimv2/Win32_Service')]
        [CimInstance]$CimService
    )

    process {
        if ($pscmdlet.ParameterSetName -eq 'FromService') {
            $Name = $Service.Name
        }
        if ($Name) {
            $params = @{
                ClassName = 'Win32_Service'
                Filter    = 'Name="{0}"' -f $Name
                Property  = 'Name', 'ProcessId', 'State'
            }
            $CimService = Get-CimInstance @params
        }
        if ($CimService.State -eq 'Running') {
            Get-Process -Id $CimService.ProcessId
        } else {
            Write-Error ('The service {0} is not running' -f @(
                $CimService.Name
            ))
        }
    }
}
