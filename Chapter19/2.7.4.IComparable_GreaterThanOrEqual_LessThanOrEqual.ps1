# Requires 2.7.2

$first = [MyClass]@{ Number = 1 }
$second = [MyClass]@{ Number = 1 }
$first -ge $second

# Expects output:
#
# True

$first -le $second

# Expects output:
#
# True
