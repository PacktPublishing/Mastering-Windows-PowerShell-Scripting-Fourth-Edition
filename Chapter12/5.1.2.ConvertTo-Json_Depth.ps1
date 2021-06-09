@{
    one = @{    # 1st iteration (depth 1)
        two = @{    # 2nd iteration (depth 2)
            three = @{
                four = 'value'
            }
        }
    }
} | ConvertTo-Json
