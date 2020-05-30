$options = New-PSSessionOption -SkipCACheck
$session = New-PSSession computerName -SessionOptions $options