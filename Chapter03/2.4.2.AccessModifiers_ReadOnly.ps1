$File = New-Item NewFile.txt -Force
$File.Name = 'NewName'

# Expects error:
#
# 'Name' is a ReadOnly property.
# At line:1 char:1
# + $File.Name = 'NewName'
# + ~~~~~~~~~~~~~~~~~~~~~~
#  + CategoryInfo : InvalidOperation: (:) [], RuntimeException
#  + FullyQualifiedErrorId : PropertyAssignmentException