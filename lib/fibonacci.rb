# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n) (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n)
  raise ArgumentError if n < 0

  return fibonacci_helper(n, {})
end

def fibonacci_helper(n, hash)
  if (n == 0) || (n == 1)
    return n
  end

  hash[n] = fibonacci_helper(n-1, hash) + fibonacci_helper(n-2, hash)
  return hash[n]
end