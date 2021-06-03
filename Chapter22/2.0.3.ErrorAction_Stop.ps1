# Requires 2.0.1

Start-Task -ErrorAction Stop

# Expects error:
#
# Start-Task: Something went wrong

$Error[0]

# Expects error record:
#
# ErrorRecord                 : Something went wrong
# WasThrownFromThrowStatement : False
# TargetSite                  : System.Collections.ObjectModel.Coll
#                               ection`1[System.Management.Automati
#                               on.PSObject] Invoke(System.Collecti
#                               ons.IEnumerable)
# StackTrace                  :    at System.Management.Automation.
#                               Runspaces.PipelineBase.Invoke(IEnum
#                               erable input)
#                                  at System.Management.Automation.
#                               Runspaces.Pipeline.Invoke()
#                                  at Microsoft.PowerShell.Executor
#                               .ExecuteCommandHelper(Pipeline
#                               tempPipeline, Exception&
#                               exceptionThrown, ExecutionOptions
#                               options)
# Message                     : The running command stopped
#                               because the preference variable
#                               "ErrorActionPreference" or common
#                               parameter is set to Stop:
#                               Something went wrong
# Data                        : {System.Management.Automation.Inter
#                               preter.InterpretedFrameInfo}
# InnerException              :
# HelpLink                    :
# Source                      : System.Management.Automation
# HResult                     : -2146233087
