# Will leave an open stream. Restart PowerShell to clear the lock on NewFile.txt

function Invoke-Something {
    begin {
	    $fileStream = [System.IO.File]::OpenWrite((
            Join-Path -Path $pwd -ChildPath NewFile.txt
        ))
        $count = 0
    }

    process {
        if ((++$count) -eq 3) {
            throw 'Oh no! Something unexpected went wrong'
        }
    }

    end {
        $fileStream.Close()
    }
}

1..5 | Invoke-Something
Remove-Item NewFile.txt
