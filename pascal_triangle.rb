# In this triangle, the value at a position is equal to the sum of values of the 2 elements just above it.


# Examples

# The 2nd element of 5th row is 1+3 => 4

# The 3rd element of 5th row is 3+3 => 6

# The 4th element of 5th row is 3+1 => 4

# Given a number n, find the first n row of pascal's triangle.

def generate_pascal_triangle(num_rows)
    i = 0
    triangle = []
    while i < num_rows do
        triangle.push([])
        j = 0
        while j <= i do
            if j == 0 || j == i
                triangle[i].push(1)
            else
                triangle[i].push(triangle[i-1][j-1] + triangle[i-1][j])
            end
            j += 1
        end
        i += 1
    end
    puts triangle.inspect

end

def optimized(num)
    res = [1]
    prev = 1
    (1..num).each do |i| 
        curr = (prev * (num - i + 1))/i
        res.push(curr)
        prev = curr
    end

    return res
end


puts generate_pascal_triangle(6)
puts optimized(5).inspect