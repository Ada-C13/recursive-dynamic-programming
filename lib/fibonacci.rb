# Improved Fibonacci

# Faezah and I worked together through these problems :)

# Time Complexity - O(n)
# Space Complexity - O(n), because of the call stack but number of variables is constant
# Hint, you may want a recursive helper method
def fibonacci(n)
  raise ArgumentError if n < 0
  return fibonacci_helper([0,1], 2, n)
end
 
def fibonacci_helper(array, current, fibNum)
  return fibNum if fibNum == 0 || fibNum == 1
  return (array[0] + array[1]) if current == fibNum

  array[0], array[1] = array[1], (array[0] + array[1])

  return fibonacci_helper(array, current + 1, fibNum)
end