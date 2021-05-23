[String]$thisString = "some value"
(Get-Variable thisString).Attributes

# Expects output:
#
# TransformNullOptionalParameters TypeId
# ------------------------------- -----
#                            True System.Management.Automation.ArgumentTypeConverterAttribute
