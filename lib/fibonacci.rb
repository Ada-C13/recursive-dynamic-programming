# Improved Fibonacci

# Time Complexity - O(1)
# Space Complexity - O(n)  (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n)
  return n if n == 0 || n == 1
  raise ArgumentError if n < 0
  
  return fib_helper(0, 1, 2, n)
end

def fib_helper(one, two, index, n)
  if index == n
    return one + two
  else
    return fib_helper(two, one + two, index + 1, n)
  end
end
