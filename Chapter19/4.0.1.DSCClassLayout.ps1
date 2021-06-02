enum Ensure {
    Absent
    Present
}

[DscResource()]
class MyResource {
    [DscProperty(Key)]
    [Ensure] $Ensure

    [MyResource] Get() { return $this }

    [void] Set() { }

    [bool] Test() { return $true }
}
