# Improved Fibonacci

# Time Complexity - O(n) where n is n
# Space Complexity - O(1) where the size of memo_arr is always 2
# Hint, you may want a recursive helper method
def fibonacci(n)
  raise ArgumentError, "n cannot be a negative number" if n < 0

  return fib_helper([0,1], 2, n)
end


def fib_helper(memo_arr, current, n)
  # base cases
  return n if n == 1 || n == 0
  return memo_arr.sum if current == n

  # memoization using parellel assignment and recursive cases 
  memo_arr[0], memo_arr[1] = memo_arr[1], memo_arr.sum
  return fib_helper(memo_arr, current + 1, n)
end