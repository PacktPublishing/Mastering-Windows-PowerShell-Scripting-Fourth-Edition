function caller {
    [IPAddress]::Parse('this is not an IP')
    child1
}
function second {
    'second'
}
caller
