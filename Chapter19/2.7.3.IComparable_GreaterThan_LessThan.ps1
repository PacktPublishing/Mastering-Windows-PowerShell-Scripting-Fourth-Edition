# Requires 2.7.2

$first = [MyClass]@{ Number = 1 }
$second = [MyClass]@{ Number = 2 }
$first -lt $second

# Expects output:
#
# True

$first -gt $second

# Expects output:
#
# False
