class ParentClass {
    [string] GetString() {
        return 'Hello world'
    }
}

class ChildClass : ParentClass {
    [string] GetString() {
        $string = ([ParentClass]$this).GetString()
        return '{0} on {1}' -f @(
            $string
            Get-Date -Format 'dddd'
        )
    }
}
