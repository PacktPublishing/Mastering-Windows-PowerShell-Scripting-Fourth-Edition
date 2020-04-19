(Get-Date '01/01/2019'), (Get-Date '01/01/2020') | ForEach-Object ToString('yyyyMMdd')

# Expects output:
#
# 20190101
# 20200101