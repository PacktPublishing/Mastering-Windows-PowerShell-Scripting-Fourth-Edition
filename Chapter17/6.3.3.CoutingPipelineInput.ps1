function Measure-Item {
    begin {
        $count = 0
    }

    process {
        $count++
    }

    end {
        $count
    }
}
