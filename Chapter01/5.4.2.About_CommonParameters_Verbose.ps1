Start-Process notepad -Verbose -PassThru | Stop-Process -Verbose

# Expects verbose:
#
# VERBOSE: Performing the operation "Stop-Process" on target "notepad (5592)".
