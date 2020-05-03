# Improved Fibonacci

# Time Complexity - O(n) => where n is the number of call stack
# Space Complexity - O(n) 
# => although I create an array, it is always the same constant size (array length is always 2) => "O(1)" 
# => O(1) + O(n) (the system stack) becomes O(n)

# Hint, you may want a recursive helper method

def fibonacci(n)
  return fibonacci_helper(n, [0, 1], 2)
end


def fibonacci_helper(n, solutions, current)
  raise ArgumentError, "Number must be greater than or equal to 0" if n < 0
  return n if n == 0 || n == 1

  if current == n 
    return solutions[0] + solutions[1]
  end 

  solutions = [solutions[-1], solutions[0] + solutions[1]]

  return fibonacci_helper(n, solutions, current + 1)
end