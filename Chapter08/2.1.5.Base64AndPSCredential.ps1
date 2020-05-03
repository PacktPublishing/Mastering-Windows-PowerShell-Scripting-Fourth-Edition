# Create a 16-byte key
[Byte[]]$key = 1..16 | ForEach-Object {
    Get-Random -Minimum 0 -Maximum 256
}

# Convert the key to a string and save it in a file
[Convert]::ToBase64String($key) | Out-File 'KeepThisSafe.txt'

# Create a secure string (from plain text) to encrypt
$secure = ConvertTo-SecureString -String 'Secure text' -AsPlainText -Force
# Encrypt the password using the key (from the file)
$convertFromSecureString = @{
    SecureString = $secure
    Key          = [Convert]::FromBase64String((
        Get-Content .\KeepThisSafe.txt
    ))
}
$encrypted = ConvertFrom-SecureString @convertFromSecureString

# Decrypt the password using the same key
$convertToSecureString = @{
    String = $encrypted
    Key    = [Convert]::FromBase64String((Get-Content .\KeepThisSafe.txt))
}
$secure = ConvertTo-SecureString @convertToSecureString

# Show the original password
[PSCredential]::new('.', $secure).GetNetworkCredential().Password
