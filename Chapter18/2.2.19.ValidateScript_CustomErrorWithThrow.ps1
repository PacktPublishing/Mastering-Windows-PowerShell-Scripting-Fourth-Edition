function Test-ValidateScript {
    [CmdletBinding()]
    param (
        [ValidateScript({
            if (Test-Path $_ -PathType Leaf) {
                $true
            } else {
                throw 'Path must be an existing file'
            }
        })]
        [String]$Path
    )
}
