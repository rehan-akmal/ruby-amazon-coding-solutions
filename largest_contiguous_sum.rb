# Kadane's Algorithm: Given an integer array arr, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum and print the subarray.

# Example:
# Example 1:
# Input: arr = [-2,1,-3,4,-1,2,1,-5,4]
# Output: 6
# Explanation: [4,-1,2,1] has the largest sum = 6.
# Examples 2:
# Input: arr = [1]
# Output: 1
# Explanation: Array has only one element and which is giving positive sum of 1.


def largest_contiguous_sum arr
    max_total_sum = 0
    max_current_sum = 0
    arr_start = 0
    arr_end = 0
    arr.each_with_index do |num, index|
        max_current_sum = num + max_current_sum
        if max_current_sum < 0
            max_current_sum = 0
            arr_start = index
        end
        if max_total_sum < max_current_sum
            max_total_sum = max_current_sum
            arr_end = index
        end
    end
    puts arr[arr_start+1..arr_end].inspect
    return max_total_sum
end

puts largest_contiguous_sum [-2,1,-3,4,-1,2,1,5,4]