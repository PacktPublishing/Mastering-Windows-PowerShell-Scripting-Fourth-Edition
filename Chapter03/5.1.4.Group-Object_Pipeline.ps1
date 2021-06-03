Get-ChildItem C:\Windows\Assembly -Filter *.dll -File -Recurse |
    Group-Object Name -NoElement |
    Where-Object Count -gt 1 |
    Sort-Object Count, Name -Descending |
    Select-Object Name, Count -First 5

# Expects output similar to:
#
# Name                                                   Count
# ----                                                   -----
# Microsoft.Web.Diagnostics.resources.dll                14
# Microsoft.Web.Deployment.resources.dll                 14
# Microsoft.Web.Deployment.PowerShell.resources.dll      14
# Microsoft.Web.Delegation.resources.dll                 14
# Microsoft.Web.PlatformInstaller.resources.dll          13
