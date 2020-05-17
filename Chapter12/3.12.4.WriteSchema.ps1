$writer = [System.IO.StringWriter]::new()
$schemaSet.Schemas()[0].Write($writer)
$writer.ToString()
