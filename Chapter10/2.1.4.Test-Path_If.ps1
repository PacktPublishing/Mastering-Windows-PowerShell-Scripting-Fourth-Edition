if (-not (Test-Path C:\Temp\NewDirectory -PathType Container)) {
    New-Item C:\Temp\NewDirectory -ItemType Directory
}
