# Problem Statement: Longest Consecutive Subsequence
# longest consecutive subsequence : Given an array of integers, find the length of the longest sub-sequence such that elements in the subsequence are consecutive integers, the consecutive numbers can be in any order.


# Example: arr[] = [1, 9, 3, 10, 4, 20, 2]

# Output: 4

# Explanation: The subsequence 1, 3, 4, 2 is the longest subsequence of consecutive elements


def longest_consective_sunsequence nums
    hash = nums.map.with_index.to_h
    max = 0
    nums.each_with_index do |num, index|
        next if hash.has_key?(num-1)
        curr_max = 0
        j = num
        while  hash.has_key?(j) do
            curr_max += 1
            j += 1
        end
        max = curr_max if curr_max > max
    end

    max
end


puts longest_consective_sunsequence([1, 9, 3, 10, 4, 20, 2])