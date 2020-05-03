# Improved Fibonacci

# Time Complexity - ? O(n). 
# Space Complexity - ?  O(n) b/c stack frames add on to the call stack
# Hint, you may want a recursive helper method
def fibonacci(n)
  raise ArgumentError.new("Can'd take nagative number. INPUT: #{n} ") if n < 0
  fib_helper(1, 0, 2, n)
end

def fib_helper(second_last, third_last, current_index, n)
  return n if n == 0 || n == 1

  if current_index == n
    return second_last + third_last
  end

  last = second_last + third_last
  third_last = second_last
  second_last = last
  return fib_helper(second_last, third_last, current_index + 1, n)
end