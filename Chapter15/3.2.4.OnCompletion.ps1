# When the job started in 3.2.1 completes.

$psInstance.InvocationStateInfo.State

# Expects output:
#
# Completed

$asyncResult.IsCompleted

# Expects output:
#
# True