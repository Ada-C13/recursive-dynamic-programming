# Improved Fibonacci

# Time Complexity - O(n), n decrements by 1 each call 
# Space Complexity - O(n), n frames added to stack
def fibonacci(n, a=0, b=1)
  raise ArgumentError, "input must be greater or equal to  0" if n < 0
  return n == 0 ? a : fibonacci(n-1, b, a+b)
end
