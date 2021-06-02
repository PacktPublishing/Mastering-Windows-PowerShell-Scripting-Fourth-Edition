# Requires 6.3.1

$result = 1..2 | Show-Pipeline

# Expects output:
#
# Pipeline position 1: Start
# Pipeline position 1: 1
# Pipeline position 1: 2
# Pipeline position 1: End
