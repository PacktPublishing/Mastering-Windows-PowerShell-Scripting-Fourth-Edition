$html = '<table><tr><td>Value1</td><td>Value2</td></tr></table>'
$html -match '<td>.+</td>'

# Expects output:
#
# True

$matches[0]

# Expects output:
#
# <td>Value1</td><td>Value2</td>