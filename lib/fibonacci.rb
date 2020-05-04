# Improved Fibonacci

# Time Complexity - ?
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n)
  return n <= 1 ? n : fibonacci(n-1) + fibonacci(n-2)
end
