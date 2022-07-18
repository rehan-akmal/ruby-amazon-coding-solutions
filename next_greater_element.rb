# Given an array, print the Next Greater Element (NGE) for every element. The Next greater Element for an element x is the first greater element on the right side of x in the array. Elements for which no greater element exist, consider the next greater element as -1.


# Example:

# arr = [1,2,3,4,3]

# Output: [2,3,4,-1,-1]

def next_greater_element(nums)
    s = []
    res = Array.new(nums.length)
    nums.each_with_index do |num, index|

        if index == 0 || s.empty?
            s.push(index)
        else
            if num <= nums[s[-1]]
                s.push(index)
            else
                res[s[-1]] = num
                s.pop
                redo
            end
        end
    end
    res.map{|e| e.nil? ? -1 : e}.inspect
end

puts next_greater_element([13,7,6,12,10])
puts next_greater_element([1,2,3,4,3])
