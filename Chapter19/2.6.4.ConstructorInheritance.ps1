class ParentClass {
    ParentClass() {
        Write-Host 'Default parent constructor'
    }
}

class ChildClass : ParentClass {
    ChildClass() {
        Write-Host 'Default child constructor'
    }
}
