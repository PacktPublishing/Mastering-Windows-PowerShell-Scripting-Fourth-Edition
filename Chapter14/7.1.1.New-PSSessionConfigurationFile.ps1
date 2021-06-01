if (-not (Test-Path c:\jea)) {
    New-Item c:\jea -ItemType Directory
}
$params = @{
    Path           = 'c:\jea\jea.pssc'
    LanguageMode   = 'NoLanguage'
    SessionType    = 'RestrictedRemoteServer'
    VisibleCmdlets = @(
        'Get-ComputerInfo'
        'Export-Csv'
    )
}
New-PSSessionConfigurationFile @params
