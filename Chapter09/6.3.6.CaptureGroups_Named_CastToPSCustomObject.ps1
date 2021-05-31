if ('first second third' -match '(?<One>first) (?<Two>second) (?<Three>third)') {
    $matches.Remove(0)
    [PSCustomObject]$matches
}

# Expects output:
#
# One   Three Two
# ---   ----- ---
# first third second