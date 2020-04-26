function Set-FileState {
    param (
        [Parameter(Mandatory)]
        [ValidateSet('Update', 'Create', 'Delete')]
        [string]$Action
    )

    $params = @{
        Path = '~\test.txt'
        ItemType = 'File'
        Value    = 'File content'
    }
    switch ($Action) {
        { $_ -in 'Delete', 'Update' } {
            if (Test-Path -Path $params.Path) {
                Remove-Item -Path $params.Path
            }
            if ($_ -eq 'Update') {
                $_ = 'Create'
            }
        }
        'Create' {
            New-Item @params
        }
    }
}
Set-FileState -Action Update
