# Given an array arr of size N and an integer K. The task is to find the pair of integers such that their sum is maximum and but less than K

# Examples: 

# Input : arr = {30, 20, 50} , K = 70 
# Output : 30, 20 
# 30 + 20 = 50, which is the maximum possible sum which is less than K
 

# Input : arr = {5, 20, 110, 100, 10}, K = 85 
# Output : 20, 10 


def two_sum(arr, k)
    arr.sort!
    l, r = 0, arr.length-1
    max = 0
    while l < r
        puts "l = " + l.to_s + " , r = " + r.to_s
        temp = arr[l] + arr[r]
        if k > temp
            l += 1
        else
            r -= 1
        end
    end
    puts arr[l]
    puts arr[r]
end

arr = [20, 10, 30, 100, 110]
k = 85

two_sum arr, k