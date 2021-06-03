# Requires 1.3.1

$tokens | Select-Object -First 2

# Expects output:
#
# Text       : # A short script
# TokenFlags : ParseModeInvariant
# Kind       : Comment
# HasError   : False
# Extent     : # A short script
#
# Text       :
# TokenFlags : ParseModeInvariant
# Kind       : NewLine
# HasError   : False
# Extent     :
