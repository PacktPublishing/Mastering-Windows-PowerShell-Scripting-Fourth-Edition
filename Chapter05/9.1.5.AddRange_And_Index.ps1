$list = [System.Collections.Generic.List[String]]::new()
$list.AddRange([String[]]("Tom", "Richard", "Harry"))
$list[1]    # Returns Richard
