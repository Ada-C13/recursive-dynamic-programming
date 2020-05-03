# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)  
# Hint, you may want a recursive helper method

def fib_helper(last, second_to_last, current, n)
  return n if n == 0 || n == 1

  if current == n
    return last + second_to_last
  end

  sum = last + second_to_last
  last = second_to_last
  second_to_last = sum

  return fib_helper(last, second_to_last, current + 1, n)
end

def fibonacci(n)
  raise ArgumentError if n < 0
  fib_helper(0, 1, 2, n)
end


