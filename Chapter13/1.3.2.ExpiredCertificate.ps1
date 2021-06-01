# Windows PowerShell only

Invoke-WebRequest "https://expired.badssl.com/"

# Expects output similar to (truncated example):
#
# StatusCode        : 200
# StatusDescription : OK
# ...
