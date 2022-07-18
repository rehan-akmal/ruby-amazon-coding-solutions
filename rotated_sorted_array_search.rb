# Search for a given number in a sorted array, with unique elements, that has been rotated by some arbitrary number. Return -1 if the number does not exist.


# arr[] = [5, 6, 7, 8, 9, 10, 1, 2, 3]

# target = 3

# Answer: At 8th index


def search(arr, target)
    n = arr.length
    left, right = 0, n - 1
    return -1 if n == 0
        
    while left <= right do
        mid = left + ((right - left) / 2)

        return mid if arr[mid] == target 
        
        # inflection point to the right. Left is strictly increasing
        if arr[mid] >= arr[left]
            if arr[left] <= target && target < arr[mid]
                right = mid - 1
            else
                left = mid + 1
            end
                
        # inflection point to the left of me. Right is strictly increasing
        else
            if arr[mid] < target && target <= arr[right]
                left = mid + 1
            else
                right = mid - 1
            end
        end
    end
            
    return -1
end

puts search([5, 6, 7, 8, 9, 10, 1, 2, 3], 10)