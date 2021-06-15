# Note:
#
# The Test method should replace the Test implementation in the class created in 4.0.2.

class ComputerDescription {
    [bool] Test() {
        $key = Get-Item $this.Path
        if ($this.Ensure -eq 'Present') {
            if ($key.GetValueNames() -notcontains $this.valueName) {
                return $false
            }
            return $key.GetValue($this.valueName) -eq
                $this.Description
        } else {
            return $key.GetValueNames() -notcontains $this.valueName
        }
        return $true
    }
}
