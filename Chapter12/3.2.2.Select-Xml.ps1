Select-Xml -XPath '//car[colour="Green"]/engine' -Content $string |
    Select-Object -ExpandProperty Node

# Expects:
#
# size    cylinders
# ----    ---------
# 2.0     4