for ($i = $positions.Count - 1; $i -ge 0; $i--) {
    $positionInfo = $positions[$i]

    $string = $string.Remove(
        $positionInfo.Start,
        $positionInfo.Length
    ).Insert(
        $positionInfo.Start,
        $valuesToInsert[$i]
    )
}
