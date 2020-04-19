$hashtable = @{ Value = 1 }
1 | ForEach-Object -Parallel {
    # The string variable is only access if using is used.
    $using:hashtable.Value = 2
}

# Expects error:
#
# ParserError:
# Line |
# 3 |      $using:hashtable.Value = 2
#   |      ~~~~~~~~~~~~~~~~~~~~~~
#   | At line:3 char:5 +     $using:hashtable.Value = 2 +     ~~~~~~~~~~~~~~~~~~~~~~
# The assignment
#   | expression is not valid. The input to an assignment operator must be an object that is able to accept
#   | assignments, such as a variable or a property.
