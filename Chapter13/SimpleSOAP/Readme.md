# SimpleSOAP

This solution contains a simple, contrived, SOAP service which can be used to demonstrate accessing SOAP services from code in languages such as PowerShell.

Clone or download this repository and open the solution in Visual Studio (2015 or higher).

Start a debugging session for the solution by pressing F5.

The web browser will display an "HTTP Error 403.14" page if service.cs is not selected. Regardless of this error, the service may be accessed using:
```
http://localhost:[Port]/Service.asmx
```
The WDSL may be accessed using:
```
http://localhost:[Port]/Service.asmx?WSDL
```
For example:
```
http://localhost:62369/Service.asmx
```
The solution will download the nuget package Newtonsoft.Json.dll as part of the build. If download fails follow the steps below:

1. Select Tools
1. Select Nuget Package Manager
1. Package Manager Settings
1. Select Package Sources
1. Ensure https://api.nuget.org/v3/index.json is listed and ticked.
1. Ensure https://www.nuget.org/api/v2 is not ticked.

This library is used to seed the web service with data which can be queried by the methods.