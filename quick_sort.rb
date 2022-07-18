def quick_sort(arr, first, last)
    if first < last
        p = partition(arr, first, last)
        quick_sort(arr, first, p-1)
        quick_sort(arr, p+1, last)
    end
    return arr

end

def partition(arr, first, last)
    pivot = arr[last]

    pIndex = first
    i = first
    while i < last do
        if arr[i] <= pivot
            arr[i], arr[pIndex] = arr[pIndex], arr[i]
            pIndex += 1
        end
        i += 1
    end
    arr[pIndex], arr[last] = arr[last], arr[pIndex]
    return pIndex
end

puts quick_sort([10,80,30,90,40,50,70], 0, 6)