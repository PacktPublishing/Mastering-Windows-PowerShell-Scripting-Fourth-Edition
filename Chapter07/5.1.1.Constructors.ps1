[System.Text.StringBuilder]::new

# Expects output:
#
# OverloadDefinitions
# ------------------
# System.Text.StringBuilder new()
# System.Text.StringBuilder new(int capacity)
# System.Text.StringBuilder new(string value)
# System.Text.StringBuilder new(string value, int capacity)
# System.Text.StringBuilder new(string value, int startIndex, int length, int capacity)
# System.Text.StringBuilder new(int capacity, int maxCapacity)