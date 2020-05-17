@{
    one = @{    # 1st iteration
        two = @{    # 2nd iteration
            three = @{
                four = 'value'
            }
        }
    }
} | ConvertTo-Json