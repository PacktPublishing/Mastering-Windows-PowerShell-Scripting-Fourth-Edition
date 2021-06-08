New-PSDrive -Name X -PSProvider FileSystem -Root \\Server\Share
New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT
