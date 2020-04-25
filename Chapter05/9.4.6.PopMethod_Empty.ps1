$stack.Clear()
$stack.Pop()

# Expects error:
#
# Exception calling "Pop" with "0" argument(s): "Stack empty."
# At line:1 char:1 + $stack.Pop()
# + ~~~~~~~~~~~~
#    + CategoryInfo : NotSpecified: (:) [], MethodInvocationException
#    + FullyQualifiedErrorId : InvalidOperationException