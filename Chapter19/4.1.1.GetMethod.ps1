# Note:
#
# This method must replace the Get implementation in the class created in 4.0.2. It cannot be used independently.

[ComputerDescription] Get() {
    $key = Get-Item $this.Path
    if ($key.GetValueNames() -contains $this.valueName) {
        $this.Ensure = 'Present'
        $this.Description = $key.GetValue($this.valueName)
    } else {
        $this.Ensure = 'Absent'
    }
    return $this
}
