$regex = '(?<=\s)([0-9a-f]{2}[-:]){5}[0-9a-f]{2}$'
ip address |
    Where-Object { $_ -match $regex } |
    ForEach-Object { $matches[0] }

# Expects output similar to:
#
# 12:34:56:78:9a:bc
