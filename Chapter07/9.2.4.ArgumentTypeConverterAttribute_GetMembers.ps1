$typeConverterType.GetMembers() |
    Select-Object Name, MemberType, IsPublic

# Expects output:
#
# Name                                        MemberType IsPublic
# ----                                        ---------- --------
# get_TargetType                                  Method    False
# Transform                                       Method    False
# TransformInternal                               Method    False
# MemberwiseClone                                 Method    False
# Finalize                                        Method    False
# .ctor                                      Constructor    False
# TargetType                                    Property
# _convertTypes                                    Field    False
