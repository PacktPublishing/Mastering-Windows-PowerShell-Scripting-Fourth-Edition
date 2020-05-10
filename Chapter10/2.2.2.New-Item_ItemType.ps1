New-Item LinkName -ItemType SymbolicLink -Value \\Server\Share 
New-Item LinkName.txt -ItemType HardLink -Value OriginalName.txt 
New-Item LinkName -ItemType Junction -Value C:\Temp 