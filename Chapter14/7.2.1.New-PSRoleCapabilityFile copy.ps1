$params = @{
    Path = 'c:\jea\group.psrc'
    VisibleCmdlets  = @(
        'Get-ComputerInfo'
        'Export-Csv'
    )
}
New-PSRoleCapabilityFile @params
