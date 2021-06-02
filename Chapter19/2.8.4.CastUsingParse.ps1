class MyClass {
    [int] $Number

    static [MyClass] Parse(
        [object] $value
    ) {
        if ($value -as [int]) {
            return [MyClass]@{ Number = $value }
        } else {
            throw 'Unsupported value'
        }
    }
}
