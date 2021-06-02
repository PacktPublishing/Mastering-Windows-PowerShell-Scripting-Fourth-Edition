function Test-DynamicParam {
    [CmdletBinding()]
    param ( )

    dynamicparam { }

    end {
        Write-Host 'Function body'
    }
}
