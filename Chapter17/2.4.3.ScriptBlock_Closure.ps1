$string = 'first value'
$scriptBlock = { $string }.GetNewClosure()
$string = 'second value'
& $scriptBlock
