# Next Greater Permutation: Given an array Arr[] of integers, rearrange the numbers of the given array into the lexicographically next greater permutation of numbers.
# If such an arrangement is not possible, it must rearrange it as the lowest possible order (i.e., sorted in ascending order).

# Example:

# Array: [1, 2, 3, 4]

# Next Greater Permutation: [1, 2, 4, 3]

# Next Greater Permutation: [1, 3, 2, 4]

# Next Greater Permutation: [1, 3, 4, 2]

# Next Greater Permutation: [1, 4, 2, 3]

# Next Greater Permutation: [1, 4, 3, 2]

# Next Greater Permutation: [2, 1, 3, 4]

# Array: [4, 3, 2, 1]

# Next Greater Permutation: [1, 2, 3, 4]


def next_greater_permutation(nums)
    i = j = nums.length - 1
    while i > 0 && nums[i] <= nums[i-1] do
        i = i - 1
    end
    return nums.reverse if i == 0

    i = i - 1
    while  j > i && nums[j] <= nums[i] do
        j = j-1
    end
    nums[i], nums[j] = nums[j], nums[i] #swap
    nums = nums[0, i+1] + nums[i+1, nums.length].reverse  #reverse all string after i

    return nums


end


puts next_greater_permutation([4,3,2,1]).inspect