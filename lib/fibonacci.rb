# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)
# Hint, you may want a recursive helper method
def fibonacci(n)
  raise ArgumentError, "n cannot be less than 0" if n < 0
  return 0 if n == 0 

  old_sum, new_sum = 0, 1
  return fib_helper(old_sum, new_sum, n)
end

def fib_helper(old_sum, new_sum, count)
  temp_sum = old_sum + new_sum
  return temp_sum if count <= 2
  count -= 1
  return fib_helper(new_sum, temp_sum, count)
end