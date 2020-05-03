$bytes = [System.Text.Encoding]::Unicode.GetBytes('Hello world')
[Convert]::ToBase64String($bytes)

# Expects output:
#
# SABlAGwAbABvACAAdwBvAHIAbABkAA==