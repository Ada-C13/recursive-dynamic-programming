# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n), but could we get this to O(1) using a hash table somehow?
def fibonacci(n)
  raise ArgumentError.new("Error: Number is less than zero!") if n < 0
  
  return fib_helper([0, 1], 2, n)
end

def fib_helper(solutions, current, n)
  return n if n <= 1
  
  return solutions[n - 1] + solutions[n - 2] if current == n

  solutions << solutions[current - 1] + solutions[current - 2]

  return fib_helper(solutions, current + 1, n)
end