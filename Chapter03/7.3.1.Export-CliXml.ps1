[PSCustomObject]@{
    Number  = 1
    Decimal = 2.3
    String  = 'Hello world'
} | Export-Clixml .\object.xml