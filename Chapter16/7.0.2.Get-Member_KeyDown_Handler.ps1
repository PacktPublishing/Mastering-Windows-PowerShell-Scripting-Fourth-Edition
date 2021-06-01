# Requires 7.0.1

$ui.MainWindow | Get-Member add_KeyDown -Force

# Expects output:
#
#    TypeName: System.Windows.Window

# Name        MemberType Definition
# ----        ---------- ----------
# add_KeyDown Method     void add_KeyDown(System.Windows.Input.K...
