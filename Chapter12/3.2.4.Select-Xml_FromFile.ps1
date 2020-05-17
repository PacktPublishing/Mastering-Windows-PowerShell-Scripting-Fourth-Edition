Set-Content -Path file.xml -Value $string
Select-Xml -Path file.xml -XPath '//car[colour="Green"]/engine'