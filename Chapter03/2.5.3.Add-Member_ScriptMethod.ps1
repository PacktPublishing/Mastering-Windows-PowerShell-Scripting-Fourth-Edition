$empty = New-Object Object
$empty | Add-Member -Name New -Value 'Hello world' -MemberType NoteProperty
$params = @{
    Name       = 'Replace'
    MemberType = 'ScriptMethod'
    Value      = { $this.New = $this.New -replace 'world', 'everyone' }
}
$empty | Add-Member @params
$empty.Replace()
