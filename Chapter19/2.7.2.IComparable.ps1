class MyClass : IComparable {
    [int] $Number

    [int] CompareTo([object] $object) {
        if ($this.Number -gt $object.Number) {
            return 1
        } elseif ($this.Number -lt $object.Number) {
            return -1
        } else {
            return 0
        }
    }
}
