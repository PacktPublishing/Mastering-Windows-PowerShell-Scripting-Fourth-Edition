enum Ensure {
    Absent
    Present
}

[DscResource()]
class ComputerDescription {
    [DscProperty(Key)]
    [Ensure] $Ensure

    [DscProperty()]
    [string] $Description

    $path = 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters'
    $valueName = 'svrcomment'

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

    [void] Set() {
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

    [bool] Test() {
        $key = Get-Item $this.Path
        if ($this.Ensure -eq 'Present') {
            if ($key.GetValueNames() -notcontains $this.valueName) {
                return $false
            }
            return $key.GetValue($this.valueName) -eq
                $this.Description
        } else {
            return $key.GetValueNames() -notcontains
            $this.valueName
        }
        return $true
    }
}
