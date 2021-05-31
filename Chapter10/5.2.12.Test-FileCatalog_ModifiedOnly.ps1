$result.PathItems.Keys | Where-Object {
    $result.CatalogItems.ContainsKey($_) -and
    $result.CatalogItems[$_] -ne $result.PathItems[$_]
}
