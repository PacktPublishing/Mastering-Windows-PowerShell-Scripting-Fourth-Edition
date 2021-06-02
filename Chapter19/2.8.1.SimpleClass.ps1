class MyClass {
    [int] $Number

    MyClass() { }
    MyClass([int] $value) {
        $this.Number = $value
    }
}
