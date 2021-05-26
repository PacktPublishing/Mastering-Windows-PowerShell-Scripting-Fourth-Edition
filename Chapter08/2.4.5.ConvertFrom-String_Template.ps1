# Windows PowerShell only

$template = '{Task*:{ImageName:System Idle Process} {[Int]PID:0} {SessionName:Services} {Session:0} {Memory:24 K}}'

tasklist |
    Select-Object -Skip 3 |
    ConvertFrom-String -TemplateContent $template |
    Select-Object -ExpandProperty Task

# Expects output similar to:
#
# ImageName   : System Idle Process
# PID         : 0
# SessionName : Services
# Session     : 0
# Memory      : 8 K

# ImageName   : System
# PID         : 4
# SessionName : Services
# Session     : 0
# Memory      : 3,364 K
