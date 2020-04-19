Get-ChildItem C:\Windows\Assembly -Filter *.dll -Recurse |
    Group-Object Name, Length -NoElement |
    Where-Object Count -gt 1 |
    Sort-Object Name -Descending |
    Select-Object Name, Count -First 6

# Name                                               Count
# ----                                               -----
# WindowsBase.ni.dll, 4970496                          2
# System.Xml.ni.dll, 6968320                           2
# System.Windows.Interactivity.ni.dll, 121856          2
# System.Windows.Forms.ni.dll, 17390080                2
# System.Web.ni.dll, 16481792                          2
# System.Web.ni.dll, 13605888                          2