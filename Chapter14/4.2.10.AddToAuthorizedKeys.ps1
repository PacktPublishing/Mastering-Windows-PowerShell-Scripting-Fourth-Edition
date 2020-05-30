# Run on Windows. Use key from 4.2.9.

$publicKey = 'ssh-rsa AAAABG...'
Set-Content -Path ~/.ssh/authorized_keys -Value $publicKey
