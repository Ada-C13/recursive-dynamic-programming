# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n) due to using the call stack
# Hint, you may want a recursive helper method

def fib_helper(solutions, current, n)
  sum = solutions[0] + solutions[1]
  return sum if current == n
  
  solutions[0] = solutions[1]
  solutions[1] = sum
  return fib_helper(solutions, current + 1, n)
end

def fibonacci(n)
  raise ArgumentError.new("n cannot be a negative number") if n < 0
  return n if n == 0 || n == 1

  return fib_helper([0, 1], 2, n)
end
