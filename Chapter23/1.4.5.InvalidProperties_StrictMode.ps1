Set-StrictMode -Version Latest
if ($object.ValueB) {
    Write-Host "ValueB is set"
}

# Expects error:
#
# PropertyNotFoundException: The property 'ValueB' cannot be found on this object. Verify that the property exists.
