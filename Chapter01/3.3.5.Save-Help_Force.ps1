Save-Help -Module Microsoft.PowerShell.Management -DestinationPath C:\PSHelp -UICulture pl-PL -Force

# Expects error:
#
# Save-Help: Failed to save Help for the module(s) 'Microsoft.PowerShell.Management' with UI culture(s) {pl-PL} : The specified culture is not supported: pl-PL. Specify a culture from the following list: {en-US}..
# English-US help content is available and can be saved using: Save-Help -UICulture en-US.
