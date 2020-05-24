[System.Net.ServicePointManager]::ServerCertificateValidationCallback = { $true }
$webClient = [System.Net.WebClient]::new()
$webClient.DownloadString('https://expired.badssl.com/')

#  Expects error:
#
# MethodInvocationException: Exception calling "DownloadString" with "1" argument(s): "The SSL connection could not be established, see inner exception. There is no Runspace available to run scripts in this thread. You can provide one in the DefaultRunspace property of the System.Management.Automation.Runspaces.Runspace type. The script block you attempted to invoke was:  $true "
