function Test-AdvancedBinding {
    [CmdletBinding()]
    param (
        $Parameter1,

        [Parameter(ValueFromRemainingArguments)]
        $OtherArguments
    )

    $OtherArguments
}
