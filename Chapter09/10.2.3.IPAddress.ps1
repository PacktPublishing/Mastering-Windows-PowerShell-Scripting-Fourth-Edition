$regex = '(?x)
    # First three octets
    ((
        # 0 to 9 OR
        [0-9]|
        # 10 to 99 OR
        [1-9][0-9]|
        # 100 to 199 OR
        1[0-9]{2}|
        # 200 to 249 OR
        2[0-4][0-9]|
        # 250 to 255
        25[0-5]
    # Trailing dot and repeat
    )\.){3}
    # Last octet
    ([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])'

'10.0.0.1' -match $regex

# Expects output:
#
# True
