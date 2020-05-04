# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)  (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n)
  return 0 if n == 0
  raise ArgumentError if n < 0

  fib_helper(0, 1, n-1)
end

def fib_helper(i, j, n)
  # base case
  return j if n == 0
  # recursive case
  return fib_helper(j, i+j, n-1)
end
