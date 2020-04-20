if (-not ('System.Web.HttpUtility' -as [Type])) {
    Write-Host 'Adding assembly' -ForegroundColor Green
    Add-Type -Assembly System.Web
}

# Expects output:
#
# Adding assembly
