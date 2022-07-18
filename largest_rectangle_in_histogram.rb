# Given an array of integers heights representing the histogram's bar height where the width of each bar is 1, return the area of the largest rectangle in the histogram.



# Example:

# heights = [2,1,5,6,2,3]

# Output: 10

# Explanation: The above is a histogram where width of each bar is 1. The largest rectangle is shown in the red area, which has an area = 10 units.

def largest_rectangle_in_histogram(histogram)
    s = []
    left = []
    histogram.each_with_index do |bar, index|
            if s.empty?
                s.push(index)
                left.push(0 )
            else
                if histogram[s[-1]] > bar
                    s.pop
                    redo
                else
                    left.push(s[-1] + 1)
                    s.push(index)       
                end
            end
    end
    s = []
    right = []
    i = histogram.length - 1
    while i >= 0 do
        if s.empty?
            s.push(i)
            right.push(5)
        else
            if histogram[s[-1]] > histogram[i]
                s.pop
                redo
            else
                right.push(s[-1] - 1)
                s.push(i)       
            end
        end
        i -= 1
    end

    max = 0

    histogram.each_with_index do |bar, index|
        m = (right.reverse[index] - left[index] + 1 ) * bar
        max = m if m > max
    end
    max
end

puts largest_rectangle_in_histogram([2,1,5,6,2,3])