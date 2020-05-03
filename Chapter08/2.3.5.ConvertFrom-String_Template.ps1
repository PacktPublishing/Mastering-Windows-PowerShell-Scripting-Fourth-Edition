$template = '{Task*:{ImageName:System Idle Process} {[Int]PID:0} {SessionName:Services} {Session:0} {Memory:24 K}}'

tasklist |
    Select-Object -Skip 3 |
    ConvertFrom-String -TemplateContent $template |
    Select-Object -ExpandProperty Task