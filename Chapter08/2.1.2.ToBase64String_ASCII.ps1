$bytes = [System.Text.Encoding]::ASCII.GetBytes('Hello world')
[Convert]::ToBase64String($bytes)

# Expects output:
#
# SGVsbG8gd29ybGQ=