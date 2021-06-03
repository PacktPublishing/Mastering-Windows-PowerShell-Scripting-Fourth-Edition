Get-ChildItem C:\Windows\Assembly -Filter *.dll -Recurse |
    Group-Object Name, Length -NoElement |
    Where-Object Count -gt 1 |
    Sort-Object Name -Descending |
    Select-Object Name, Count -First 5

# Expects output similar to:
#
# Name                                                 Count
# ----                                                 -----
# WindowsFormsIntegration.Package.ni.dll, 100352           2
# Templates.Editorconfig.Wizard.resources.ni.dll, 9216    13
# Templates.Editorconfig.Wizard.resources.ni.dll, 8192    13
# System.Web.ni.dll, 16939008                              2
# System.Web.ni.dll, 14463488                              2
