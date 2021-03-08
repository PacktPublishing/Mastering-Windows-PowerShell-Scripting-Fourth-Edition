$File = New-Item NewFile.txt -Force
$File | Get-Member -MemberType Property

# Expects:
#
#     TypeName: System.IO.FileInfo
#
# Name              MemberType    Definition
# ----              ----------    ----------
# Attributes        Property      System.IO.FileAttributes Attributes {get;set;}
# CreationTime      Property      datetime CreationTime {get;set;}
# CreationTimeUtc   Property      datetime CreationTimeUtc {get;set;}
# Directory         Property      System.IO.DirectoryInfo Directory {get;}
# DirectoryName     Property      string DirectoryName {get;}
# Exists            Property      bool Exists {get;}