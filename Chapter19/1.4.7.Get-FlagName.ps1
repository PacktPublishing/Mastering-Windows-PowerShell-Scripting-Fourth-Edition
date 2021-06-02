function Get-FlagName {
    [CmdletBinding()]
    param (
        $Value
    )

    $enumType = $Value.GetType()
    $i = 0
    do {
        $bit = $Value -as [Int64] -band 1 -shl $i++
        if ($bit) {
            [PSCustomObject]@{
                Name        = $bit -as $enumType
                Integer     = $bit
                Hexadecimal = '0x{0:X8}' -f $bit
                BitPosition = $i
            }
        }
    } until (1 -shl $i -ge $value)
}
