$list = [System.Collections.Generic.List[Int]]@(1..100000000)
[PSCustomObject]@{
    # Linear and Binary are roughly comparable
    'Linear, near start' = Measure-Command {
        $list.IndexOf(24)
    } | ForEach-Object TotalMilliseconds
    'Binary, near start' = Measure-Command {
        $list.BinarySearch(24)
    } | ForEach-Object TotalMilliseconds

    # Binary is more effective
    'Linear, near end'   = Measure-Command {
        $list.IndexOf(99767859)
    } | ForEach-Object TotalMilliseconds
    'Binary, near end'   = Measure-Command {
        $list.BinarySearch(99767859)
    } | ForEach-Object TotalMilliseconds
}

# Expects output similar to:
#
# Linear, near start Binary, near start Linear, near end Binary, near end
# ------------------ ------------------ ---------------- ----------------
#             1.5307             1.4244          44.3841            2.186
