$strings = '20170102-2030', '20170103-0931.24'
[String[]]$formats = 'yyyyddMM-HHmm', 'yyyyddMM-HHmm.ss'

foreach ($string in $strings) {
    [DateTime]::ParseExact(
        $string,
        $formats,
        (Get-Culture),
        'None'
    )
}