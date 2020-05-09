$certificate = Get-ChildItem Cert:\LocalMachine\Root |
    Select-Object -First 1

@(
    '-----BEGIN CERTIFICATE-----'
    [Convert]::ToBase64String(
        $certificate.Export('Cert')
    ) -split '(?<=\G.{64})'
    '-----END CERTIFICATE-----'
) | Out-String
