# Improved Fibonacci

# Time Complexity - O(2^n)
# Space Complexity - O(n)  (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n)
  if n < 0
    raise ArgumentError.new("n must be greater than or equal to 0")
  end
  return calc_fib(n)
end

def calc_fib(n)
  if n < 2
    return n 
  end
  return calc_fib(n-1) + calc_fib(n-2)
end



