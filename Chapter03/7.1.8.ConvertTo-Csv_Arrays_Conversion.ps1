[PSCustomObject]@{
    Name  = "Numbers"
    Value = 1, 2, 3, 4, 5
} | ForEach-Object {
    $_.Value = $_.Value -join ', '
    $_
} | ConvertTo-Csv -NoTypeInformation

# Expects output:
#
# "Name","Value"
# "Numbers","1, 2, 3, 4, 5"