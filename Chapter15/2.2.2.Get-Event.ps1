New-Item C:\Data\new.txt | Out-Null
Get-Event

# Expects output similar to:
#
# ComputerName     :
# RunspaceId       : 46d2a562-2d07-4c58-9416-f82a3e9da5b8
# EventIdentifier  : 3
# Sender           : System.IO.FileSystemWatcher
# SourceEventArgs  : System.IO.FileSystemEventArgs
# SourceArgs       : {System.IO.FileSystemWatcher, new.txt}
# SourceIdentifier : ff0784dc-1f0f-4214-b5e7-5d5516eaa13e
# TimeGenerated    : 19/02/2019 17:29:53
# MessageData      :
