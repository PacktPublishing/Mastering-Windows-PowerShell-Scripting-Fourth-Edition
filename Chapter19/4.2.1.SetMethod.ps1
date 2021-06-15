# Note:
#
# The Set method should replace the Set implementation in the class created in 4.0.2.

class ComputerDescription {
    [Void] Set() {
        $commonParams = @{
            Path = $this.path
            Name = $this.valueName
        }
        if ($this.Ensure -eq 'Present') {
            $newParams = @{
                Value = $this.Description
                Type  = 'String'
                Force = $true
            }
            New-ItemProperty @newParams @commonParams
        } else {
            $key = Get-Item $this.Path
            if ($key.GetValueNames() -contains $this.valueName) {
                Remove-ItemProperty @commonParams
            }
        }
    }
}
