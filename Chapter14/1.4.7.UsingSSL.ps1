Invoke-Command -ScriptBlock { Get-Process } -ComputerName $env:COMPUTERNAME -UseSSL

# Expects an error similar to:
# [SSLTEST] Connecting to remote server SSLTEST failed with the following error message : The server certificate on the destination computer (SSLTEST:5986) has the following errors:
# The SSL certificate is signed by an unknown certificate authority. For more information, see the about_Remote_Troubleshooting Help topic.
# + CategoryInfo : OpenError: (SSLTEST:String) [], PSRemotingTransportException
# + FullyQualifiedErrorId : 12175,PSSessionStateBroken