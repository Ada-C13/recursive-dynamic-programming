# Improved Fibonacci

# Time Complexity - ?
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n)
  raise ArgumentError.new("Error: Number is less than zero!") if n < 0
  return fib_helper([0, 1], 2, n) # we want to start current at 2 because it is the first number that won't trigger line 12
end

def fib_helper(solutions, current, n)
  return n if n <= 1

  # if n reaches the current number
  # return the sum of values at n-1 and n-2 in the solutions array

  # otherwise push the sum of values current-1 and current-2 into the solutions array

  # return fibonacci_helper with current incremented by 1
end