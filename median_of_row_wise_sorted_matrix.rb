# We are given a row-wise sorted matrix of size r*c, we need to find the median of the matrix given. It is assumed that r*c is always odd.

# Examples:

# 1 3 5

# 2 6 9

# 3 6 9

# Output : Median is 5

def median(matrix)
    low = 0
    high = 10 ** 9
    m = matrix.length
    n = matrix[0].length
    median_idx = (m*n)/2
    while low <= high
        x = (low+high)/2
        val = smaller_from_num(matrix, x)
        if val <= median_idx
            low = x + 1
        else
            high = x - 1
        end 
    end
    return low
    
end

def smaller_from_num(matrix, x)
    res = 0
    matrix.each do |row|
        l = 0
        h = row.length-1
        while l <= h
            mid = (h+l)/2
            if x >= row[mid]
                l  = mid + 1
            else
                h = mid - 1
            end 
        end
        res += l
    end
    res
end

puts smaller_from_num([[1,3,5],[2,6,9],[3,6,9]], 4).inspect
puts median([[1,3,5],[2,6,9],[3,6,9]]).inspect
