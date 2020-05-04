# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)  (should be O(n))
# Hint, you may want a recursive helper method
FIB_NUMS = { 0 => 0, 1 => 1}

def fibonacci(n)
  raise ArgumentError if n < 0
  if n <= 1 
    return n
  elsif FIB_NUMS[n]
    return FIB_NUMS[n]
  else
    FIB_NUMS[n] = fibonacci(n - 1) + fibonacci(n - 2)
    return FIB_NUMS[n]
  end
end