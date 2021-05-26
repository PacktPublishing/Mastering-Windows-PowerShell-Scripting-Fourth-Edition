$date = Get-Date 01/01/1601   # A valid DateTime object with an obvious date
$string = '20170102-2030'

if ([DateTime]::TryParseExact($string, 'yyyyddMM-HHmm', $null, 'None', [Ref]$date)) {
    $date
}