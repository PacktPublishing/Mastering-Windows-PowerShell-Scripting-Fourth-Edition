class NewClass {
    [string] $DayOfWeek
}

class MyClass {
    [int] $Number

    hidden static [NewClass] op_Implicit(
        [MyClass] $instance
    ) {
        return [NewClass]@{
            DayOfWeek = [DayOfWeek]$instance.Number
        }
    }
}
