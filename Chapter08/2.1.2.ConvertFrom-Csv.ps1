"David,0123456789,28" | ConvertFrom-Csv -Header Name, Phone, Age

# Expects output:
#
# Name  Phone      Age
# ----  -----      ---
# David 0123456789 28
