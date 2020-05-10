$argumentList = @(
    $null            # Access
    $null            # Description
    $null            # MaximumAllowed
    'Share1'         # Name
    $null            # Password
    'C:\Temp\Share1' # Path
    0                # Type (Disk Drive)
)
([WmiClass]'Win32_Share').Create($argumentList)
