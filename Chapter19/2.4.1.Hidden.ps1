class MyClass {
    [string]$Property

    MyClass() {
        $this.Initialize()
    }

    hidden [void] Initialize() {
        $this.Property = 'defaultValue'
    }
}
