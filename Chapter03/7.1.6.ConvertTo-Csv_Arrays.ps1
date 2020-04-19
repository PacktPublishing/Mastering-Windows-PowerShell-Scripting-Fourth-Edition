[PSCustomObject]@{
    Name = "Numbers"
    Value = 1, 2, 3, 4, 5
} | ConvertTo-Csv -NoTypeInformation

# Expects output:
#
# "Name","Value"
# "Numbers","System.Object[]"