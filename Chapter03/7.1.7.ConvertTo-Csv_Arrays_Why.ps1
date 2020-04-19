$object = [PSCustomObject]@{
    Name = "Numbers"
    Value = 1, 2, 3, 4, 5
}
$object.Value.ToString()

# Expects output:
#
# System.Object[]