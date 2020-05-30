$session2 = New-PSSession PSTest
Copy-Item -Path C:\temp\doc.txt -Destination C:\Temp -ToSession $session2