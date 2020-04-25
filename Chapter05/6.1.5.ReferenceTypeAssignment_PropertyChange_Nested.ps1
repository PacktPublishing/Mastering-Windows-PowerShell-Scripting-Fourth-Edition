$complexObject = [PSCustomObject]@{
    OuterNumber = 1
    InnerObject = [PSCustomObject]@{
        InnerNumber = 2
    }
}
$innerObject = $complexObject.InnerObject

$innerObject.InnerNumber = 5
Write-Host $complexObject.InnerObject.InnerNumber

# Expects output:
#
# 5