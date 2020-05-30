# Run on Windows. Paste public key copied from Linux.

$publicKey = 'ssh-rsa AAAABG...'
Set-Content -Path ~/.ssh/authorized_keys -Value $publicKey