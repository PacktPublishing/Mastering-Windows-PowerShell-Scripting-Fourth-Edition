# Requires 1.4.7 and 1.4.9

Get-FlagName -Value ([MyEnum]::FirstAndThird)

# Expects output:
#
# Name Integer Hexadecimal BitPosition
#  ---- ------- ----------- -----------
# First       1 0x00000001            1
# Third       4 0x00000004            3
