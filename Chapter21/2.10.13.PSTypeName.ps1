$command = (Get-Command Enable-NetAdapter)
$parameter = $command.Parameters['InputObject']
$attribute = $parameter.Attributes |
    Where-Object TypeId -match 'PSTypeName'
$attribute.PSTypeName

# Expects output:
#
# Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapter
