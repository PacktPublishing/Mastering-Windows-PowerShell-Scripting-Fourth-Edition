$params = @{
    Path           = 'c:\jea\jea.pssc'
    LanguageMode   = 'NoLanguage'
    SessionType    = 'RestrictedRemoteServer'
    RoleDefinitions = @{
        'DOMAIN\Group' = @{
            RoleCapabilityFiles = 'c:\jea\group.psrc'
        }
    }
}
New-PSSessionConfigurationFile @params
