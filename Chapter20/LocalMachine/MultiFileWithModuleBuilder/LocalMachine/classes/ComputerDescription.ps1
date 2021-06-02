[DscResource()]
class ComputerDescription {
    [DscProperty(Key)]
    [Ensure] $Ensure

    [DscProperty()]
    [string] $Description

    [ComputerDescription] Get() {
        try {
            $this.Description = Get-ComputerDescription -ErrorAction Stop
            $this.Ensure = 'Present'
        } catch {
            $this.Description = ''
            $this.Ensure = 'Absent'
        }
        return $this
    }

    [void] Set() {
        if ($this.Ensure -eq 'Present') {
            Set-ComputerDescription -Description $this.Description
        } else {
            Remove-ComputerDescription
        }
    }

    [bool] Test() {
        $currentDescription = Get-ComputerDescription -ErrorAction SilentlyContinue

        if ($this.Ensure -eq 'Present') {
            if ($currentDescription -ne $this.Description) {
                return $false
            }
        } else {
            if ($currentDescription) {
                return $false
            }
        }
        return $true
    }
}
