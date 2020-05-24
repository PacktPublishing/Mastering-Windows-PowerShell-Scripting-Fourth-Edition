Invoke-WebRequest www.indented.co.uk -Method OPTIONS |
    Select-Object -ExpandProperty Headers

# Expects similar to:
#
# Key            Value
# ---            -----
# Allow          GET, HEAD