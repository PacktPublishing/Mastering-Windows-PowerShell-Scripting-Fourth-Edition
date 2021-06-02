function Show-Pipeline {
    begin {
        $position = $MyInvocation.PipelinePosition
        Write-Host "Pipeline position ${position}: Start"
    }

    process {
        Write-Host "Pipeline position ${position}: $_"
        $_
    }
}
