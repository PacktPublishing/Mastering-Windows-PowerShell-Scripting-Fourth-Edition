Class AcceptAllPolicy: System.Net.ICertificatePolicy {
    [Boolean] CheckValidationResult(
        [System.Net.ServicePoint] $servicePoint,
        [System.Security.Cryptography.X509Certificates.X509Certificate] $certificate,
        [System.Net.WebRequest] $webRequest,
        [Int32] $problem
    ) {
        return $true
    }
}
[System.Net.ServicePointManager]::CertificatePolicy = [AcceptAllPolicy]::new()