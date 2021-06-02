class MyClass {
    [string]$Value = 'Hello world'

    [string] ToString() {
        return '{0} on {1}' -f  @(
            $this.Property
            (Get-Date).ToShortDateString()
        )
    }

    [string] ToString(
        $dateFormat
    ) {
        return '{0} on {1}' -f @(
            $this.Property
            Get-Date -Format $format
        )
    }
}
