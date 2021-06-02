class MyBaseClass {
    [string] GetString() { return 'default' }
}

class MyClass : MyBaseClass {
    [string] GetString() { return 'new' }
}
