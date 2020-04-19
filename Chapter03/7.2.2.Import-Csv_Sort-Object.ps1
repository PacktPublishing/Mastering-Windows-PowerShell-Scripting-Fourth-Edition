# Expects CSV to contain:
#
# Name,Position
# Jim,35
# Matt,3
# Dave,5

Import-Csv .\positions.csv | Sort-Object Position

# Expects output:
#
# Name    Position
# ----    --------
# Matt    3
# Jim     35
# Dave    5