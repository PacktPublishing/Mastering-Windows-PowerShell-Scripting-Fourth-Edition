'David,0123456789,28,"1 Some street,
A Lane"' |
    ConvertFrom-Csv -Header Name, Phone, Age, Address |
    Format-Table -Wrap