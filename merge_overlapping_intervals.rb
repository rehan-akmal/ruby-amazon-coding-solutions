# The problem statement is: Given a list of intervals, merge them to get a list of non-overlapping intervals.

# interval = [start, end]

# Example:

# Intervals: [[1, 2], [2, 3], [1, 4], [5, 6]]

# [1, 2] and [2, 3] can be merged to form [1, 3].

# Now, [1, 3] and [1, 4] can be merged to form [1, 4].

# [1, 4] and [5, 6] have no intersection.

# Hence above intervals are merged to form: [[1, 4], [5, 6]]
def merged_intervals(arr)
    merged_intervals = []
    min = -1
    max = -1
    is_new_pair = true
    arr.sort.each_with_index do |pair, index|
        if is_new_pair
            min, max = first(pair), second(pair)
            is_new_pair = false
        else
            if first(pair) < max
                max = second(pair) if second(pair) > max 
            else
                merged_intervals.push([min,max])
                min, max = first(pair), second(pair)
                
            end
        end
    end
    merged_intervals.push([min,max])
    return merged_intervals
end

def first(data)
    data[0]
end

def second(data)
    data[1]
end


puts merged_intervals([[1, 2], [2, 3], [1, 4], [5, 6]]).inspect