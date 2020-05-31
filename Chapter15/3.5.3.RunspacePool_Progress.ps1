$jobs | Select-Object Id, State

# Expects output similar to:
#
# Id                                      State
# --                                      -----
# 63e2ab2d-613a-4c9c-8f21-d93c8a126008    Completed
# 781e4a08-04d6-4927-986a-e116fb16a852    Completed
# 1d80c45d-326b-423b-93d9-21703e747a93    Running
# 6840dfb1-f47d-4977-868f-697fcbb8af7e    Running
# 6f3aa668-f680-40b6-8a94-c9d04693b1ad    Running
# 868f324c-7ba5-4913-83a9-345d8f356aec    Running
# 318a44ec-b390-45a5-a2cc-0272c1e2ad20    Running
# ced0f017-1a1c-42d0-9c53-9e09f9c8ace9    Running
# 9d003c91-6a2b-4d6f-820e-975fffeb57d8    Running
# 71818997-b55e-41d6-bdf2-e62426036863    Running