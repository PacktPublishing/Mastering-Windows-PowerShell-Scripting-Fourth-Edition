1 | ForEach-Object -Parallel {
    $using:newString = $_
}

# Expects error:
#
# ParserError:
# Line |
#    2 |      $using:newString = $_
#      |      ~~~~~~~~~~~~~~~~
#      | The assignment expression is not valid. The input to an assignment
#      | operator must be an object that is able to accept assignments,
#      | such as a variable or a property.
