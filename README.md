# Ruby Amazon Coding Solutions
## This repository contains the solutions of the mostly asked question in the interview process of Amazon


## Questions


1) Kadane's Algorithm: Given an integer array arr, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum and print the subarray.

```sh
Example:
Example 1:
Input: arr = [-2,1,-3,4,-1,2,1,-5,4]
Output: 6
Explanation: [4,-1,2,1] has the largest sum = 6.
Examples 2:
Input: arr = [1]
Output: 1
Explanation: Array has only one element and which is giving positive sum of 1.
```

2) Given an array of integers heights representing the histogram's bar height where the width of each bar is 1, return the area of the largest rectangle in the histogram.
```sh
Example:
heights = [2,1,5,6,2,3]
Output: 10
Explanation: The above is a histogram where width of each bar is 1.
```

3) Longest Consecutive Subsequence: Given an array of integers, find the length of the longest sub-sequence such that elements in the subsequence are consecutive integers, the consecutive numbers can be in any order.
```sh
Example: arr[] = [1, 9, 3, 10, 4, 20, 2]
Output: 4
Explanation: The subsequence 1, 3, 4, 2 is the longest subsequence of consecutive elements
```

4) Problem Statement: Longest Subarray with Zero Sum
Given an array of integers, find the length of the longest sub-array with a sum that equals 0.
```sh
Example: arr[] = [15, -2, 2, -8, 1, 7, 10, 23]
Output: 5
Explanation: Explanation: The longest sub-array with elements sum to 0 is [-2, 2, -8, 1, 7]
```

5) Matrix rotation: Given a matrix, rotate the matrix 90 degrees clockwise.
```sh
Matrix:
1 2 3
4 5 6
7 8 9
After rotation:
7 4 1
8 5 2
9 6 3
```
6) The problem statement is: Given an array A, find the maximum number of consecutive 1s in the array.
```sh
Example:
A: [1, 1, 3, 2, 3, 1, 1, 1]
Max consecutive 1s: 3
```

7) We are given a row-wise sorted matrix of size r*c, we need to find the median of the matrix given. It is assumed that r*c is always odd.
```sh
Examples:
1 3 5
2 6 9
3 6 9
Output : Median is 5
```

8) The problem statement is: Given a list of intervals, merge them to get a list of non-overlapping intervals.
interval = [start, end]
```sh
Example:
Intervals: [[1, 2], [2, 3], [1, 4], [5, 6]]
[1, 2] and [2, 3] can be merged to form [1, 3].
Now, [1, 3] and [1, 4] can be merged to form [1, 4].
[1, 4] and [5, 6] have no intersection.
Hence above intervals are merged to form: [[1, 4], [5, 6]]
```

9) Given an array, print the Next Greater Element (NGE) for every element. The Next greater Element for an element x is the first greater element on the right side of x in the array. Elements for which no greater element exist, consider the next greater element as -1.
```sh
Example:
arr = [1,2,3,4,3]
Output: [2,3,4,-1,-1]
```

10) Next Greater Permutation: Given an array Arr[] of integers, rearrange the numbers of the given array into the lexicographically next greater permutation of numbers.
If such an arrangement is not possible, it must rearrange it as the lowest possible order (i.e., sorted in ascending order).
```sh
Example:
Array: [1, 2, 3, 4]
Next Greater Permutation: [1, 2, 4, 3]
Next Greater Permutation: [1, 3, 2, 4]
Next Greater Permutation: [1, 3, 4, 2]
Next Greater Permutation: [1, 4, 2, 3]
Next Greater Permutation: [1, 4, 3, 2]
Next Greater Permutation: [2, 1, 3, 4]
Array: [4, 3, 2, 1]
Next Greater Permutation: [1, 2, 3, 4]
```

11) In this triangle, the value at a position is equal to the sum of values of the 2 elements just above it.
```sh
Examples
The 2nd element of 5th row is 1+3 = 4
The 3rd element of 5th row is 3+3 = 6
The 4th element of 5th row is 3+1 = 4
Given a number n, find the first n row of pascal triangle.
```

12) Quicksort


13) Search for a given number in a sorted array, with unique elements, that has been rotated by some arbitrary number. Return -1 if the number does not exist.
```sh
arr[] = [5, 6, 7, 8, 9, 10, 1, 2, 3]
target = 3
Answer: At 8th index
```
14) Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it is able to trap after raining.
```sh
Example: arr = [0,1,0,2,1,0,1,3,2,1,2,1]
Output: 6
Explanation: The above elevation map (black section) is represented by array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water (blue section) are being trapped.
```

15) The problem statement is: We are given a list of N elements and a number M. We have to find two elements in the given list whose sum is M.
List = [a1, a2, ... , aN]
So, if the two elements are ai and aj, then:
ai + aj = M
```sh
Example:
Given numbers = [2, 7, 11, 15], target = 9,
Because nums[0] + nums[1] = 2 + 7 = 9,
result [0, 1]
```

Feel free to make an addition or improvement in the questions and if you like the effort, do give a star to the repo :-) 
