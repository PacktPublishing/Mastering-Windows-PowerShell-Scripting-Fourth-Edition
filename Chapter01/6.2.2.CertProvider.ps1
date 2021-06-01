Set-Location Cert:\LocalMachine\Root
Get-ChildItem

# Expects output similar to (truncated example):
#
#  Directory: Microsoft.PowerShell.Security\Certificate::LocalMachine\Root
#
# Thumbprint                                  Subject
# ----------                                  -------
# CDD4EEAE6000AC7F40C3802C171E30148030C072    CN=Microsoft Root Certif...
# BE36A4562FB2EE05DBB3D32323ADF445084ED656    CN=Thawte Timestamping C...
# A43489159A520F0D93D032CCAF37E7FE20A8B419    CN=Microsoft Root Author...
