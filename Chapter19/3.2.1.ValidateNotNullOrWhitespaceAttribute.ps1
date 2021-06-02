using namespace System.Management.Automation

class ValidateNotNullOrWhitespaceAttribute :
    ValidateArgumentsAttribute {

    [void] Validate(
        [object]           $arguments,
        [EngineIntrinsics] $engineIntrinsics
    ) {
        if ([String]::IsNullOrWhitespace($arguments)) {
            throw 'The value cannot be null or white space'
        }
    }
}
