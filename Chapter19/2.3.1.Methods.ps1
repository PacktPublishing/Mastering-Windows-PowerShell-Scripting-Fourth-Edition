class MyClass {
    [string]$Value = 'Hello world'
}
[MyClass]::new().ToString()

# Expects output:
#
# MyClass
