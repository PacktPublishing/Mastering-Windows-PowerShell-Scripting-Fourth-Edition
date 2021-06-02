function Import-Json {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory, ValueFromPipelineByPropertyName)]
        [Alias('PSPath')]
        [String]$Path
    )

    process {
        Get-Content $Path | ConvertFrom-Json
    }
}
