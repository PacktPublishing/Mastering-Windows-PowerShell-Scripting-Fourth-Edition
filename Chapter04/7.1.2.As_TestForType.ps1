if (-not ('System.Windows.Forms.Form' -as [Type])) {
    Write-Host 'Adding assembly' -ForegroundColor Green
    Add-Type -Assembly System.Windows.Forms
}

# Expects output:
#
# Adding assembly
