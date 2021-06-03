function Get-Something
{
    [CmdletBinding()]
    param
    (
        [Parameter(ValueFromPipeline)]
        [string]$InputObject
    )

    Write-Verbose 'Starting Get-Something'

    process
    {
        Write-Verbose "Working on $InputObject"
    }
}
