class MyClass : IComparable, IEquatable[object] {
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

    [int] GetHashCode() {
        return $this.Number
    }

    [bool] Equals(
        [object] $equalTo
    ) {
        return $this.Number -eq $equalTo.Number
    }
}
