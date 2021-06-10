$session1 = New-PSSession PSTest1
Copy-Item -Path C:\temp\doc.txt -Destination C:\Temp -FromSession $session1
