# matrix rotation: Given a matrix, rotate the matrix 90 degrees clockwise.

# Matrix:

# 1 2 3

# 4 5 6

# 7 8 9

# After rotation:

# 7 4 1

# 8 5 2

# 9 6 3


def rotate(matrix)
    matrix.reverse!
    matrix.each_with_index do |element, i|
        j = 0
        while  j<= i do 
            matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
            j = j + 1
        end
    end
    matrix
end

puts rotate([[1,2,3],[4,5,6],[7,8,9]]).inspect