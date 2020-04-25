$list = [System.Collections.Generic.List[Int]]::new()
$list.AddRange([Int[]](1..100000000))

# Linear and Binary are roughly comparable
Measure-Command { $list.IndexOf(24) }               # A linear search
Measure-Command { $list.BinarySearch(24) }          # A binary search

# Binary is more effective
Measure-Command { $list.IndexOf(99767859) }         # A linear search
Measure-Command { $list.BinarySearch(99767859) }    # A binary search
