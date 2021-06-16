function Enable-PhysicalAdapter {
    Get-NetAdapter -Physical | Enable-NetAdapter
}
