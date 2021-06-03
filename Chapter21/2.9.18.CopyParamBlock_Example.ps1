using namespace System.Management.Automation
[ProxyCommand]::GetParamBlock((Get-Command Select-Object))

# Expects output (truncated example):
#
# [Parameter(ValueFromPipeline=$true)]
# [psobject]
# ${InputObject},
#
# [Parameter(ParameterSetName='DefaultParameter', Position=0)]
# [Parameter(ParameterSetName='SkipLastParameter', Position=0)]
# [System.Object[]]
# ${Property},
