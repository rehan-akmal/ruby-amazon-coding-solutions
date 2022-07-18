# The problem statement is: Given an array A, find the maximum number of consecutive 1s in the array.

# Example:

# A: [1, 1, 3, 2, 3, 1, 1, 1]

# Max consecutive 1s: 3

def max_consective_ones(arr)
    max_ones = 0
    curr_ones = 0
    arr.each do |num|
        if num == 1
            curr_ones += 1
            max_ones = curr_ones if curr_ones > max_ones
        else
            curr_ones = 0
        end 
    end

    return max_ones
end

puts max_consective_ones([1, 1, 3, 2,1,1,1,1,1,1,1,1,1, 3, 1, 1, 1])