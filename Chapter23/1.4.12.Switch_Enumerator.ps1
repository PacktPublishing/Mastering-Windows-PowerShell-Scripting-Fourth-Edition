[switch]$Switch = $true
switch ($true) {
    $true { 'The value is true' }
    $false { 'The value is false' }
}

# Expects error:
#
# MetadataError: Cannot convert value "System.SZArrayEnumerator" to type "System.Management.Automation.SwitchParameter". Boolean parameters accept only Boolean values and numbers, such as $True, $False, 1 or 0.
