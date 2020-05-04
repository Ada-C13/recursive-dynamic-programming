# Improved Fibonacci

# Time Complexity  - O(n)
# Space Complexity - O(n)

def fibonacci(n) # O(n) O(n)
  raise ArgumentError if n < 0
  return fib_helper([0, 1], 2, n)
end

def fib_helper(sequence, actual, n)
  return n if n == 0 || n == 1
  return sequence[n - 1] + sequence[n - 2] if actual == n
  sequence << sequence[actual - 1] + sequence[actual - 2] # Append next value of fibonacci
  return fib_helper(sequence, actual + 1, n)
end