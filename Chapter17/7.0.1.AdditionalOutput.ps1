using namespace System.Text
$stringBuilder = [StringBuilder]::new()
$stringBuilder.AppendLine('First')

# Expects output:
#
# Capacity    MaxCapacity    Length
# --------    -----------    ------
#       16     2147483647         7
