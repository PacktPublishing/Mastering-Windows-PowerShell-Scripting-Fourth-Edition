class ParentClass {
    ParentClass([string]$value) {
        Write-Host 'Overloaded parent constructor'
    }
}

class ChildClass : ParentClass {
    ChildClass([string]$value) {
        Write-Host 'Overloaded child constructor'
    }
}
