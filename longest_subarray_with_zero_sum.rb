# Problem Statement: Longest Subarray with Zero Sum
# Given an array of integers, find the length of the longest sub-array with a sum that equals 0.


# Example: arr[] = [15, -2, 2, -8, 1, 7, 10, 23]

# Output: 5

# Explanation: Explanation: The longest sub-array with elements sum to 0 is [-2, 2, -8, 1, 7]

def longest_subarray_with_zero_sum nums
    hash = {}
    hash[0] = -1
    prev = 0
    max = 0

    nums.each_with_index do |num, index|
        sum = prev + num
        if hash.has_key?(sum)
            curr_max = index - hash[sum]
            max = curr_max if curr_max > max
        else
            hash[sum] = index
            
        end
        prev = sum
      
    end
    return max
end

puts largest_subarray_with_zero_sum([15,-2,2,-8,1,7,10,23])
puts largest_subarray_with_zero_sum([2,8,-3,-5,2,-4,6,1,2,1,-3,4])
