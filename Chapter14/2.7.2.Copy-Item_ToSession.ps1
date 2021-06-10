$session2 = New-PSSession PSTest2
Copy-Item -Path C:\temp\doc.txt -Destination C:\Temp -ToSession $session2
