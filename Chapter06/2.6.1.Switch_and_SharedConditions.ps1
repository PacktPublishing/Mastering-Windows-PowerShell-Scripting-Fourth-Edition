function Set-FileState {
    param (
        [Parameter(Mandatory)]
        [ValidateSet('Update', 'Create', 'Delete')]
        [string]$Action
    )

    $params = @{
        Path = '~\test.txt'
    }
    switch ($Action) {
        { $_ -in 'Update', 'Create' } {
            $commonParams['Value'] = 'File content'
        }
        'Update' { Set-Content @params }
        'Create' { New-Item @params -ItemType File }
        'Delete' { Remove-Item @params }
    }
}
Set-FileState -Action Update
