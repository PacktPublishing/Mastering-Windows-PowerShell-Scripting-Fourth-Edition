$typeConverterType.GetProperty(
    'TargetType',
    [System.Reflection.BindingFlags]'Instance,NonPublic'
).GetMethod | Select-Object Name, IsPublic

# Expects output
#
# Name           IsPublic
# ----           --------
# get_TargetType    False
