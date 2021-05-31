# Requires 2.10.2

$xmlSchemaInference = [System.Xml.Schema.XmlSchemaInference]::new()
$schemaSet = $xmlSchemaInference.InferSchema($reader)
