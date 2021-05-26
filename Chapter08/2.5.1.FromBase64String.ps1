$bytes = [Convert]::FromBase64String('SGVsbG8gd29ybGQ=')
-join ($bytes -as [char[]])

# Expects output:
#
# Hello world
