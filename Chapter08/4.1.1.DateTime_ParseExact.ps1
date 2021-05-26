$string = '20170102-2030'  # Represents 1st February 2017, 20:30
[DateTime]::ParseExact($string, 'yyyyddMM-HHmm', (Get-Culture))