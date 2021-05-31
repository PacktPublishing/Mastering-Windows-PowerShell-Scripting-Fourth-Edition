$path = 'C:\Windows\System32\WindowsPowerShell\v1.0\modules\ISE\en-US\ISE-help.xml'

$document = [Xml]::new()
$document.Load($path)
$document.Schemas.XmlResolver = [System.Xml.XmlUrlResolver]::new()
$document.Schemas.Add(
    'http://schemas.microsoft.com/maml/2004/10',
    'C:\Windows\System32\WindowsPowerShell\v1.0\Schemas\PSMaml\maml.xsd'
)

$document.Validate({
    param ($sender, $eventArgs)

    if ($eventArgs.Severity -in 'Error', 'Warning') {
        Write-Host $eventArgs.Message
    }
})

# Expects output similar to:
#
# The element 'details' in namespace 'http://schemas.microsoft.com/maml/dev/command/2004/10' has invalid child element 'verb' in namespace 'http://schemas.microsoft.com/maml/dev/command/2004/10'. List of possible elements expected: 'description' in namespace 'http://schemas.microsoft.com/maml/2004/10'.
