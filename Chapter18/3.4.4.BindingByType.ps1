function Get-InputObject {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline)]
        [System.Diagnostics.Process]$ProcessObject,

        [Parameter(ValueFromPipeline)]
        [System.ServiceProcess.ServiceController]$ServiceObject
    )

    process {
        if ($ProcessObject) {
            'Process: {0}' -f $ProcessObject.Name
        }
        if ($ServiceObject) {
            'Service: {0}' -f $ServiceObject.Name
        }
    }
}
