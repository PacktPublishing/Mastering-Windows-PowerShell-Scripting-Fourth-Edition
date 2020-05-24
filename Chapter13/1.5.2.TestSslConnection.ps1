using namespace System.Security.Cryptography.X509Certificates
using namespace System.Net.Security
using namespace System.Net.Sockets

$remoteCertificateValidationCallback = {
    param (
        [Object]$sender,
        [X509Certificate2]$certificate,
        [X509Chain]$chain,
        [SslPolicyErrors]$sslPolicyErrors
    )

    $psboundparameters | Export-CliXml C:\temp\CertValidation.xml
    # Always indicate SSL negotiation was successful
    $true
}

try {
    [Uri]$uri = 'https://expired.badssl.com/'

    $tcpClient = [TcpClient]::new()
    $tcpClient.Connect($Uri.Host, $Uri.Port)

    $sslStream = [SslStream]::new(
        $tcpClient.GetStream(),
        $false,    # leaveInnerStreamOpen: Close the inner stream when complete
        $remoteCertificateValidationCallback
    )
    $sslStream.AuthenticateAsClient($Uri.Host)
} catch {
    throw
} finally {
    if ($tcpClient.Connected) {
        $tcpClient.Close()
    }
}

$certValidation = Import-CliXml C:\temp\CertValidation.xml
