function Invoke-Return {
    process {
        if ($_ -gt 2 -and $_ -lt 9) {
            return
        }
        $_
    }

    end {
        'All done'
    }
}
