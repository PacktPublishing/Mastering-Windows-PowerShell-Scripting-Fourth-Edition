# Requires 1.4.2

$certValidation.Chain.ChainElements | ForEach-Object Certificate

# Expects output similar to:
#
# Thumbprint                                Subject              EnhancedKeyUsageList
# ----------                                -------              --------------------
# 404BBD2F1F4CC2FDEEF13AABDD523EF61F1C71F3  CN=*.badssl.com, OU… {Server Authentication, Client Authentication}
# 339CDD57CFD5B141169B615FF31428782D1DA639  CN=COMODO RSA Domai… {Server Authentication, Client Authentication}
# AFE5D244A8D1194230FF479FE2F897BBCD7A8CB4  CN=COMODO RSA Certi…
