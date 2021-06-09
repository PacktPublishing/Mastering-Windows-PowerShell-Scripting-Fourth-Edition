using namespace System.Xml.Linq

$path = 'C:\Windows\System32\WindowsPowerShell\v1.0\modules\ISE\en-US\ISE-help.xml'
$xDocument = [XDocument]::Load(
    $path,
    [LoadOptions]::SetLineInfo
)

$xmlSchemaSet = [System.Xml.Schema.XmlSchemaSet]::new()
$xmlSchemaSet.XmlResolver = [System.Xml.XmlUrlResolver]::new()
$null = $xmlSchemaSet.Add(
    'http://schemas.microsoft.com/maml/2004/10',
    'C:\Windows\System32\WindowsPowerShell\v1.0\Schemas\PSMaml\maml.xsd'
)
[System.Xml.Schema.Extensions]::Validate(
    $xDocument,
    $xmlSchemaSet,
    {
        param ($sender, $eventArgs)

        if ($eventArgs.Severity -in 'Error', 'Warning') {
            Write-Host $eventArgs.Message
            Write-Host ('  At {0} column {1}' -f
                $sender.LineNumber,
                $sender.LinePosition
            )
        }
    }
)
