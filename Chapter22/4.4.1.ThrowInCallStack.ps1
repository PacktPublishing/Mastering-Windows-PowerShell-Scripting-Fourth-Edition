$ErrorActionPreference = 'Continue'
function caller {
    first
    second
}
function first {
    throw 'Failed'
    'first'
}
function second {
    'second'
}
