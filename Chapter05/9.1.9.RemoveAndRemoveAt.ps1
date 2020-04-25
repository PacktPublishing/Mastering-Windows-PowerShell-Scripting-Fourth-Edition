$list = [System.Collections.Generic.List[String]]::new()
$list.AddRange([String[]]("Tom", "Richard", "Harry", "David"))
$list.RemoveAt(1)          # Richard by index
$list.Remove("Richard")    # Richard by value
