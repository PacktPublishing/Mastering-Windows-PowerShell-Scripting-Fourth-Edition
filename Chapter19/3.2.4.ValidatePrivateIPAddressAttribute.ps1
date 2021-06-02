using namespace System.Management.Automation

class ValidatePrivateIPAddressAttribute :
        ValidateEnumeratedArgumentsAttribute {

    hidden [bool] IsPrivateIPAddress(
        [IPAddress] $address
    ) {
        $bytes = $address.GetAddressBytes()

        $isPrivateIPAddress = switch ($null) {
            { $bytes[0] -eq 10 } { $true; break }
            { $bytes[0] -eq 172 -and
              $bytes[1] -ge 16 -and
              $bytes[1] -le 31 } { $true; break }
            { $bytes[0] -eq 192 -and
              $bytes[1] -eq 168 } { $true; break }
            default { $false }
        }

        return $isPrivateIPAddress
    }

    [void] ValidateElement(
        [object] $element
    ) {
        $ipAddress = $element -as [IPAddress]
        if (-not $ipAddress) {
             throw '{0} is an invalid IP address format' -f @(
                $element
            )
        }
        if (-not $this.IsPrivateIPAddress($element)) {
            throw '{0} is not a private IP address' -f @(
                $element
            )
        }
    }
}
