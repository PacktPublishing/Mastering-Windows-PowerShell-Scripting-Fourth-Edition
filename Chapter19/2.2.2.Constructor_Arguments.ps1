class MyClass {
    [string]$Value

    MyClass(
        [string] $Argument
    ) {
        $culture = Get-Culture
        $this.Value = $culture.TextInfo.ToTitleCase(
            $Argument
        )
    }
}
