# Requires 2.2.1

Select-Xml -XPath '//car[colour="Green"]/engine' -Content $string |
    Select-Object -ExpandProperty Node

# Expects output:
#
# size    cylinders
# ----    ---------
# 2.0     4
