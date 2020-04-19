Import-Csv .\positions.csv | Sort-Object { [Int]$_.Position }

# Expects output:
#
# Name Position
# ---- --------
# Matt  3
# Dave  5
# Jim   35