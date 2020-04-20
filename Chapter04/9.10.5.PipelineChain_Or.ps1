function left { throw  'Failed' }
function right { 'Done!' }
left && right

# Expects output:
#
# Failed
# Done!
