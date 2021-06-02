class MyClass {
    [string]$Value

    MyClass() {
        $this.Value = 'Hello world'
    }

    MyClass(
        [string] $Argument
    ) {
        $culture = Get-Culture
        $this.Value = $culture.TextInfo.ToTitleCase(
            $Argument
        )
    }
}
