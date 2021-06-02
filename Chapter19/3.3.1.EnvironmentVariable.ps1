using namespace System.Management.Automation

class EnvironmentVariable : IValidateSetValuesGenerator {
    [string[]] GetValidValues() {
        return Get-ChildItem env: -Name
    }
}
