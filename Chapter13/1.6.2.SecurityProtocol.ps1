using namespace System.Net
[ServicePointManager]::SecurityProtocol = [ServicePointManager]::SecurityProtocol -bor 'Tls12'