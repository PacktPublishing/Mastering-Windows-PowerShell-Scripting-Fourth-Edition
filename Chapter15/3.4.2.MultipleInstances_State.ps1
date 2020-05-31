$jobs | Select-Object Id, State

# Expects output similar to:
#
# Id                                      State
# --                                      -----
# de79dcc3-8092-4592-a89e-271fc2b8b65e    Completed
# 85de5d4d-f754-461d-88da-ac5c7948c546    Running
# eb8e0b84-2a47-4379-bd89-e7e523201033    Running
# 6357a4c3-b6d1-4a9f-8f88-ee3ac0891eb1    Running
# 3dc050fe-8ff9-4f93-afa9-86768bd3b407    Completed