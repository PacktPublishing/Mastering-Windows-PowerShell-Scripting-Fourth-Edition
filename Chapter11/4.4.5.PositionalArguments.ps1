([WmiClass]'Win32_Share').Create(
    'C:\Temp\Share1', # Path
    'Share3',         # Name
    0,                # Type (Disk Drive),
    $null,            # MaximumAllowed
    'Description'     # Description
)
