$certificate = Get-ChildItem Cert:\LocalMachine\Root |
    Select-Object -First 1

[Convert]::ToBase64String(
    $certificate.Export('Cert'),
    [System.Base64FormattingOptions]::InsertLineBreaks
)
