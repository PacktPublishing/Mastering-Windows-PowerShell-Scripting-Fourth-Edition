$position = 0
$positions = while ($position -lt $string.Length) {
    $positionInfo = [PSCustomObject]@{
        Start  = $start = $string.IndexOf('_', $position)
        End    = $string.IndexOf(' ', $start)
        Length = 0
    }
    if ($positionInfo.End -eq -1) {
        $positionInfo.End = $string.Length
    }
    $positionInfo.Length = $positionInfo.End - $positionInfo.Start

    $position = $positionInfo.End

    $positionInfo
}
