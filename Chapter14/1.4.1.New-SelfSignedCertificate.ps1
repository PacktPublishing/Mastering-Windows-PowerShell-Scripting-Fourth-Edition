New-SelfSignedCertificate -DnsName $env:COMPUTERNAME

# Expects output similar to:
#
# Thumbprint                               Subject
# ----------                               -------
# D8D2F174EE1C37F7C2021C9B7EB6FEE3CB1B9A41 CN=SSLTEST