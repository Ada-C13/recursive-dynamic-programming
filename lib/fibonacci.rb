# Improved Fibonacci

# Time Complexity - O(n)?
# Space Complexity - O(n)?  (should be O(n))
# Hint, you may want a recursive helper method

def fib_helper(n, i, hash)
  raise ArgumentError if n < 0
  return hash[n-1] + hash[n-2] if i == n

  if i <= n
    hash[i]= hash[i-1] + hash[i-2]
    i += 1
  end
  return fib_helper(n, i, hash)
end
  
def fibonacci(n)
  raise ArgumentError if n < 0
  return n if n <= 1
  fib_helper(n, 2, {0 => 0, 1 => 1})
end
