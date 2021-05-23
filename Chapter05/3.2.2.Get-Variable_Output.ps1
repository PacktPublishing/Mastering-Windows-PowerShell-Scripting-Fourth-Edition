Get-Variable | Select-Object Name, Description

# Expects output similar to:
#
# Name                        Description
# ----                        -----------
# ?                           Status of last command
# ^
# $
# args
# ConfirmPreference           Dictates when confirmation should be requested…
# DebugPreference             Dictates the action taken when a Debug message…
# EnabledExperimentalFeatures Variable to hold the enabled experimental feat…
# Error
# ErrorActionPreference       Dictates the action taken when an error messag…
# ErrorView                   Dictates the view mode to use when displaying …
# ExecutionContext            The run objects available to cmdlets
# false                       Boolean False
# FormatEnumerationLimit      Dictates the limit of enumeration on formattin…
# HOME                        Folder containing the current user's profile
# Host                        A reference to the host of the current runspace
