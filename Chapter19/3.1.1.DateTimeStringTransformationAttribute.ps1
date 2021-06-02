using namespace System.Management.Automation

class DateTimeStringTransformationAttribute :
    ArgumentTransformationAttribute {

    [object] Transform(
        [EngineIntrinsics] $engineIntrinsics,
        [object]           $inputData
    ) {
        if ($inputData -is [DateTime]) {
            return $inputData
        }

        if ($inputData -is [string]) {
            $date = Get-Date

            $isValidDate = [DateTime]::TryParseExact(
                $inputData,
                'yyyyMMddHHmmss',
                $null,
                'None',
                [ref]$date
            )
            if ($isValidDate) {
                return $date
            }
        }

        throw 'Unexpected date format'
    }
}
