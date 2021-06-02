class MyClass {
    [string]$Value = 'Hello world'

    [string] ToString() {
        return $this.Value
    }
}
