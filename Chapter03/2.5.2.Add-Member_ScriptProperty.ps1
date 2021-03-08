$empty = New-Object Object |
$empty |
    Add-Member -NotePropertyName New -NotePropertyValue 'Hello world'
$empty |
    Add-Member -Name Calculated -MemberType ScriptProperty -Value {
        $this.New.Length
    }
$empty

# Expects output:
#
# New            Calculated
# ---            ----------
# Hello world            11
