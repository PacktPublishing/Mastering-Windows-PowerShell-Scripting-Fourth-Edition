$drives = Get-PSDrive
$drives

# Expects output similar to:
#
# Name    Used (GB)    Free (GB)    Provider      Root
# ----    ---------    ---------    --------      ----
# Alias                             Alias
# C          319.37       611.60    FileSystem    C:\
# Cert                              Certificate   \
# Env                               Environment
# ...