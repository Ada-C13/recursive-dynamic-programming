# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)  

def fibonacci(n)
  raise ArgumentError if n < 0 
  return fib_helper(n, {})
end

def fib_helper(n, hash)
  return n if n == 0 || n == 1

  hash[n] = fib_helper(n-1, hash) + fib_helper(n-2, hash)
  return hash[n]

end
