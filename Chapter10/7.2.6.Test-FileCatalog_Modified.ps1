$result.PathItems.Keys | Where-Object {
    $result.CatalogItems[$_] -ne $result.PathItems[$_]
}
