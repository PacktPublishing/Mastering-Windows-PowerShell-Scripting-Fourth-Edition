# Requires 4.4.2

using module LocalMachine

$class = [ComputerDescription]@{
    Ensure      = 'Present'
    Description = 'Computer description'
}
