(Get-CimClass Win32_Process).CimClassMethods

# Expects output:
#
# Name        ReturnType   Parameters        Qualifiers
# ----        ----------   ----------        ----------
# Create      UInt32       {CommandLine...}  {Constructor...}
# Terminate   UInt32       {Reason}          {Destructor...}
# GetOwner    UInt32       {Domain...}       {Implemented...}
# GetOwnerSid UInt32       {Sid}             {Implemented...}
