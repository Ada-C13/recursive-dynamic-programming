# Improved Fibonacci

# Time Complexity - ? O(n)
# Space Complexity - ?  O(n)
# Hint, you may want a recursive helper method

def fibonacci(n)
  raise ArgumentError if n < 0
  return fib_helper(0, 1, 1, 2, n)
end

def fib_helper(first, last, sum, current, n)
  return n if n == 0 || n == 1
  return first + last if current == n

  first = last
  last = sum
  sum = first + last

  return fib_helper(first, last, sum, current + 1, n)
end
