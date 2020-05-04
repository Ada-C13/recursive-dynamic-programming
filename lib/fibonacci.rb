# Improved Fibonacci

# Time Complexity - O(n), where n is the input number to find
# Space Complexity - O(n), where n is the input number to find
# Hint, you may want a recursive helper method

def recursive_helper(memos, n)
  raise ArgumentError if n < 0
  return n if n == 0 || n == 1
  
  if n <= memos.length
    return memos[n-1]
  else 
    memos[n-1] = recursive_helper(memos, (n-1)) + recursive_helper(memos, (n-2))
  end
end

def fibonacci(n)
  return recursive_helper([0,1], n)
end