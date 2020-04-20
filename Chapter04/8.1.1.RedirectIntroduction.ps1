Get-Process -Id $pid > process.txt
Get-Content process.txt

# Expects output similar to:
#
# Handles NPM(K)  PM(K)  WS(K) CPU(s)    Id SI  ProcessName
# ------- ------  -----  ----- ------    -- --  ----------
#     731     57 132264 133156   1.81 11624  1  powershell_ise