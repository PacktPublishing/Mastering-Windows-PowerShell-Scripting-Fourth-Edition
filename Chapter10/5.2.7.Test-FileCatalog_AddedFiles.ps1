$result.PathItems.Keys | Where-Object {
    -not $result.CatalogItems.ContainsKey($_)
}
