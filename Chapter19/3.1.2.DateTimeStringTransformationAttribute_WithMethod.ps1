using namespace System.Management.Automation

class DateTimeStringTransformationAttribute :
    ArgumentTransformationAttribute {

    hidden [DateTime] $date

    hidden [bool] tryParseExact(
        [string] $value
    ) {
        $parsedDate = Get-Date
        $parseResult = [DateTime]::TryParseExact(
            $value,
            'yyyyMMddHHmmss',
            $null,
            'None',
            [Ref]$parsedDate
        )
        $this.date = $parsedDate

        return $parseResult
    }

    [object] Transform(
        [EngineIntrinsics] $engineIntrinsics,
        [object]           $inputData
    ) {
        if ($inputData -is [DateTime]) {
            return $inputData
        }

        if ($inputData -is [string]) {
            if ($this.tryParseExact($inputData)) {
                return $this.date
            }
        }

        throw 'Unexpected date format'
    }
}
