function Test-ValidateScript {
    [CmdletBinding()]
    param (
        [ValidateScript(
            { Test-Path $_ -PathType Leaf },
            ErrorMessage = 'Path must be an existing file'
        )]
        [String]$Path
    )
}
