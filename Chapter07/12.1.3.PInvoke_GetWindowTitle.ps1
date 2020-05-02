foreach ($handle in $handles) {
    $titleLength = [WindowTools]::GetWindowTextLength($handle)
    if ($titleLength -gt 0) {
        $titleBuilder = [StringBuilder]::new($titleLength)
        $null = [WindowTools]::GetWindowText(
            $handle,
            $titleBuilder,
            $titleLength + 1
        )

        [PSCustomObject]@{
            Title  = $titleBuilder.ToString()
            Handle = $handle
        }
    }
}
