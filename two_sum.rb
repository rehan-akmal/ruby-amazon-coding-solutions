# The problem statement is: We are given a list of N elements and a number M. We have to find two elements in the given list whose sum is M.

# List = [a1, a2, ... , aN]
# So, if the two elements are ai and aj, then:

# ai + aj = M
# Example:
# Given numbers = [2, 7, 11, 15], target = 9,
# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1]


def cal_sum nums, target
    hash = {}
    nums.each_with_index do |num, index|
        a = target - num
        if hash.has_key? a
            return [hash[a], index]
        else
            hash[num] = index
        end
    end
end


puts cal_sum([2, 7, 11, 15], 18).inspect