$string = @'
First line
second line
third line
'@
if ($string -match 'First(.|\r?\n)*line') { $matches[0] }

# Expects output:
#
# First line
# second line
# third line