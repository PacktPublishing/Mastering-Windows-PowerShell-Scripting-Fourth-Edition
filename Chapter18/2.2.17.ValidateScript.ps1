function Test-ValidateScript {
    [CmdletBinding()]
    param (
        [ValidateScript( { Test-Path $_ -PathType Leaf } )]
        [String]$Path
    )
}
