# Should use Thumbprint generated in 1.4.1

$params = @{
    Path  = 'WSMan:\localhost\Listener\Listener_1305953032\CertificateThumbprint'
    Value = 'D8D2F174EE1C37F7C2021C9B7EB6FEE3CB1B9A41'
}
Set-Item @params
