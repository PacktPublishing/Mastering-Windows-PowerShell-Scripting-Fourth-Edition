$examResults = @(
    [PSCustomObject]@{ Exam = 'Music';   Result = 'N/A';  Mark = 0 }
    [PSCustomObject]@{ Exam = 'History'; Result = 'Fail'; Mark = 23 }
    [PSCustomObject]@{ Exam = 'Biology'; Result = 'Pass'; Mark = 78 }
    [PSCustomObject]@{ Exam = 'Physics'; Result = 'Pass'; Mark = 86 }
    [PSCustomObject]@{ Exam = 'Maths';   Result = 'Pass'; Mark = 92 }
)
$examResults | Sort-Object {
    switch ($_.Result) {
        'Pass' { 1 }
        'Fail' { 2 }
        'N/A'  { 3 }
    }
}

# Expects output:
#
# Exam       Result    Mark
# ----       ------    ----
# Maths      Pass        92
# Physics    Pass        86
# Biology    Pass        78
# History    Fail        23
# Music       N/A         0