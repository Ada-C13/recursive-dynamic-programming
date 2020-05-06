# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity -  O(n)
# Hint, you may want a recursive helper method
def fibonacci(n)
 raise ArgumentError if n < 0
 return fibonacci_helper([0,1], 2, n)
end

def fibonacci_helper(solutions, current, n)
  return n if n == 0 || n == 1
  
  if current == n
    return solutions[0] + solutions[1]
  end

  solutions = [solutions[-1], solutions[0] + solutions[1]]
  return fibonacci_helper(solutions, current + 1, n)
end
