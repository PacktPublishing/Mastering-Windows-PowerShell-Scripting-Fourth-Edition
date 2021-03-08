$File = New-Item NewFile.txt -Force
$File.Name = 'NewName'

# Expects error:
#
# InvalidOperation: 'Name' is a ReadOnly property.
