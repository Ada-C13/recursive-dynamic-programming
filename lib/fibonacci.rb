# Improved Fibonacci

# Time Complexity - O(n) 
# Space Complexity - ?  (should be O(n)) - yes it is , because of the call stack!
# Hint, you may want a recursive helper method
def fibonacci(num)
  raise ArgumentError if num.negative?

  fibonacci_helper([0, 1], 2, num)
end

def fibonacci_helper(array, current, fib_num)
  return fib_num if fib_num.zero? || fib_num == 1

  return array[0] + array[1] if current == fib_num

  array[0], array[1] = array[1], array[0] + array[1]

  fibonacci_helper(array, current + 1, fib_num)
end
