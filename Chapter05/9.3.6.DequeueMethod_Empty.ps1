$queue.Clear()
$queue.Dequeue()

# Expects error:
#
# MethodInvocationException: Exception calling "Dequeue" with "0" argument(s): "Queue empty."
