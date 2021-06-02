class ParentClass {
    ParentClass([string]$value) {
        Write-Host 'Non-default parent constructor'
    }
}

class ChildClass : ParentClass {
    ChildClass([string]$value) : base($value) {
        Write-Host 'Non-default child constructor'
    }
}
