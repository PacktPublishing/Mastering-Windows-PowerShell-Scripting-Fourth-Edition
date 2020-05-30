# A function which exists on the current system
function Get-FreeSpace {
    param (
        [Parameter(Mandatory = $true)]
        [String]$Name
    )

    [Math]::Round((Get-PSDrive $Name).Free / 1GB, 2)
}

# Define parameters to pass to the function
$params = @{
    Name = 'c'
}

# Execute the function with a named set of parameters
Invoke-Command -ScriptBlock {
    param ( $definition, $params )

    & ([ScriptBlock]::Create($definition)) @params
} -ArgumentList ${function:Get-FreeSpace}, $params -ComputerName $computerName