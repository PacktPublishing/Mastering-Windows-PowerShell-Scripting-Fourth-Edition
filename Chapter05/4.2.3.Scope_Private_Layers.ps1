function bottom {
    $thisValue = "Bottom"
    Write-Host "Bottom: $thisValue"
    middle
}

function middle {
    # Hide thisValue from children
    $private:thisValue = "Middle" # Middle only
    Write-Host "Middle: $thisValue"
    top
}

function top {
    Write-Host "Top: $thisValue"
    # Original value
}

bottom

# Expects output:
#
# Bottom: Bottom
# Middle: Middle
# Top: Bottom