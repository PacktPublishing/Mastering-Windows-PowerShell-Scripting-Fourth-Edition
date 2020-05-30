$session1 = New-PSSession PSTest
Copy-Item -Path C:\temp\doc.txt -Destination C:\Temp -FromSession $session1