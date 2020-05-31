Get-Process | Get-Member -MemberType Event

# Expects output:
#
#     TypeName: System.Diagnostics.Process
#
# Name                 MemberType    Definition
# ----                 ----------    ----------
# Disposed             Event         System.EventHandler Disposed(System.Object, System.EventArgs)
# ErrorDataReceived    Event         System.Diagnostics.DataReceivedEventHandler ErrorDataReceived(S...
# Exited               Event         System.EventHandler Exited(System.Object, System.EventArgs)
# OutputDataReceived   Event         System.Diagnostics.DataReceivedEventHandler OutputDataReceived(...