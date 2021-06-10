$options = New-PSSessionOption -SkipCACheck
$session = New-PSSession computerName -SessionOption $options
