class ParentClass {
    ParentClass([string]$value) {
        Write-Host 'Non-default parent constructor'
    }
}

class ChildClass : ParentClass {
    ChildClass() : base('Any string value') {
        Write-Host 'Default child constructor'
    }
}
