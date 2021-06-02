$ukPhoneNumbers = '+442012345678', '0044(0)1234345678', '+44 (0) 20 81234567', '01234 456789'
$ukPhoneNumbers -replace @(
    -join @(
        '^(?:(?:\+|00)\d{2})?[ -]*' # Country code
        '(?:\(?0\)?[ -]*)?'         # Area code prefix
        '([138]\d{1,3}|20)[ -]*'    # Area code
        '(\d{3,4})[ -]*(\d{3,4})$'  # Number
    )
    '+44 $1 $2 $3'
)
