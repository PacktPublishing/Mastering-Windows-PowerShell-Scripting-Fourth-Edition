function Get-Substring {
    param (
        [string]$String,

        [int]$Start,

        [int]$Length = ($String.Length - $Start)
    )

    $String.Substring($Start, $Length)
}
