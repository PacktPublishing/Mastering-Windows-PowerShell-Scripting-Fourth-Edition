# Requires 6.0.3

$button1 = $window.FindName('Button1')
$button1.Name

# Expects output:
#
# Button1

$button1.FindName('Button2').Name

# Expects output:
#
# Button2
