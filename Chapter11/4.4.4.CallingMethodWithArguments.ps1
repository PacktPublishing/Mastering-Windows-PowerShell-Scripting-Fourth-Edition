([WmiClass]'Win32_Share').Create(
    'C:\Temp\Share1', # Path
    'Share2',         # Name
    0                 # Type (Disk Drive)
)
