$result.CatalogItems.Keys | Where-Object {
    -not $result.PathItems.ContainsKey($_)
}
