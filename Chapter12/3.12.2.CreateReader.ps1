$xmlSchemaInference = [System.Xml.Schema.XmlSchemaInference]::new()
$schemaSet = $xmlSchemaInference.InferSchema($reader)
