@{ Today = (Get-Date).DayOfWeek } | ConvertTo-Json -EnumsAsStrings

# Expects output:
#
# {
#   "Today": "Sunday"
# }
