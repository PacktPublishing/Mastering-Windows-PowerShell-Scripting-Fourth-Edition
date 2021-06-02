# Note:
#
# This method must replace the Get implementation in the class created in 4.0.2. It cannot be used independently.

[ComputerDescription] Get() {
    $properties = @{}

    $key = Get-Item $this.Path
    if ($key.GetValueNames() -contains $this.valueName) {
        $properties.Ensure = 'Present'
        $properties.Description = $key.GetValue($this.valueName)
    } else {
        $properties.Ensure = 'Absent'
    }
    return $properties
}
