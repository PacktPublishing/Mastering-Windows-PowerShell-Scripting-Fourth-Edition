# Run on Linux.
# Paste public key copied from Windows.

$publicKey = 'ssh-rsa AAAABG...'
New-Item ~/.ssh -ItemType Directory
Set-Content -Path ~/.ssh/authorized_keys -Value $publicKey
