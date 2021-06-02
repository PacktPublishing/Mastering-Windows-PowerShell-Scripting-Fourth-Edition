# Note:
#
# This example is based on an anticipated feature. The feature may not be present in PowerShell at the point of publication.
#
# This shows a speculated used of the cleanup block. It cannot be used in current releases of PowerShell 7.

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
        # Any actions end needs to perform
    }

    cleanup {
        $fileStream.Close()
    }
}
