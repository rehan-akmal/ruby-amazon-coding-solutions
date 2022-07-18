# Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it is able to trap after raining.


# Example: arr = [0,1,0,2,1,0,1,3,2,1,2,1]

# Output: 6

# Explanation: The above elevation map (black section) is represented by array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water (blue section) are being trapped.


def trapping_rain_water(h)
    ans = 0

    lmax_arr = Array.new(h.length, 0)
    rmax_arr = Array.new(h.length, 0)
 
    h.each_with_index do |val, index|
        next if index == 0
        lmax_arr[index] = [h[index-1], lmax_arr[index-1]].max
    end
    h.reverse.each_with_index do |val, index|
        next if index == 0
        rmax_arr[index] = [h.reverse[index-1], rmax_arr[index-1]].max
    end
    rmax_arr.reverse!

    h.each_with_index do |val, i|
        res = [lmax_arr[i], rmax_arr[i]].min - val
        ans += res if res>0
    end

    ans
end

puts trapping_rain_water([0,1,0,2,1,0,1,3,2,1,2,1])