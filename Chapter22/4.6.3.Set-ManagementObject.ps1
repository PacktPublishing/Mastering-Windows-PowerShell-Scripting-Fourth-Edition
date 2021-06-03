function Set-ManagementObject {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory, ValueFromPipeline)]
        $Object,

        $Property
    )

    process {
        try {
            if (Get-Random -Maximum 2) {
                throw 'something went wrong!'
            }
            $Object.Property = $Property
        } catch {
            $PSCmdlet.ThrowTerminatingError($_)
        }
    }
}
