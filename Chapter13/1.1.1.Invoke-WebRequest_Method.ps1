Invoke-WebRequest www.indented.co.uk -Method OPTIONS |
    Select-Object -ExpandProperty Headers

# Expects output:
#
# Key            Value
# ---            -----
# Allow          GET, HEAD
