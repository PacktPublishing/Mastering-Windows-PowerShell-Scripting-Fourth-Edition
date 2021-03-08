$params = @{
    ReferenceObject  = Get-ChildItem C:\Windows\System32 -File
    DifferenceObject = Get-ChildItem C:\Windows\SysWOW64 -File
    Property         = 'Name', 'Length'
    IncludeEqual     = $true
    ExcludeDifferent = $true
}
Compare-Object @params
