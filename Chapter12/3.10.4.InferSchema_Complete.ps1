$xml = [Xml]@"
<?xml version="1.0"?>
<cars>
    <car type="Saloon">
        <colour>Green</colour>
    </car>
</cars>
"@
$reader = [System.Xml.XmlNodeReader]$xml
$xmlSchemaInference = [System.Xml.Schema.XmlSchemaInference]::new()
$schemaSet = $xmlSchemaInference.InferSchema($reader)

$writer = [System.IO.StringWriter]::new()
$schemaSet.Schemas()[0].Write($writer)
$writer.ToString()

# Expects output:
#
# <?xml version="1.0" encoding="utf-16"?>
# <xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
# <xs:element name="cars">
#   <xs:complexType>
#     <xs:sequence>
#       <xs:element name="car">
#         <xs:complexType>
#           <xs:sequence>
#             <xs:element name="colour" type="xs:string" />
#           </xs:sequence>
#           <xs:attribute name="type" type="xs:string" use="required" />
#         </xs:complexType>
#       </xs:element>
#     </xs:sequence>
#   </xs:complexType>
# </xs:element>
# </xs:schema>
