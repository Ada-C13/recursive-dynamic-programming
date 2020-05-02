# Improved Fibonacci

# Time Complexity - O(n) - as n increases, the number of operations increases
# Space Complexity - O(1) - space stays constant as n changes
def fibonacci(n)
  raise ArgumentError if n < 0

  return n if n == 0 || n == 1

  solutions = [0, 1]
  current = 2

  while current < n
    storage = solutions[0] + solutions[1]
    solutions[0] = solutions[1] 
    solutions[1] = storage
    current += 1
  end

  return solutions[0] + solutions[1]
end