# Write a function to generate all possible n pairs of balanced brackets. 

# Examples: 

# Input: n=1
# Output: {}
# Explanation: This the only sequence of balanced 
# brackets formed using 1 pair of balanced brackets. 

# Input : n=2
# Output: 
# {}{}
# {{}}
# Explanation: This the only two sequences of balanced 
# brackets formed using 2 pair of balanced brackets. 


def print_brackets(n, open, close, s, ans)
    # return if number of open and close brackets are to n
    if open == n && close == n
        ans.push(s)
        return
    end
    
    # always add opening bracket first as closing cannot be added before opening bracket
    if open < n
        print_brackets(n, open + 1, close, s + "(", ans)
    end
    
    # closing bracket can only be added if its count is less than opening bracket
    if close < open
        print_brackets(n, open, close + 1, s + ")", ans)
    end
    
end
res = []
print_brackets(3, 0, 0, "", res)
puts res.inspect