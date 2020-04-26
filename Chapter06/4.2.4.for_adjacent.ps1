$encodedString = '68656C6C6F20776F726C64'
[char[]]$characters = for ($i = 0; $i -lt $encodedString.Length; $i += 2) {
    $hex = '0x{0}{1}' -f @(
        $encodedString[$i]
        $encodedString[$i + 1]
    )
    1 * $hex
}
[string]::new($characters)
