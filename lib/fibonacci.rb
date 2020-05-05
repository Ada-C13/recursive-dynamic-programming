# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - should be O(n)
# Hint, you may want a recursive helper method
def fibonacci(n)
  raise ArgumentError if n < 0
  return fibonacci_helper_method([0,1], 2, n)

end

def fibonacci_helper_method(solutions, current_num, n)

  return n if n == 0 || n == 1

  if current_num == n
    return solutions[n - 1] + solutions[n-2]
  end

  solutions.push(solutions[current_num - 1] + solutions[current_num - 2])
  return fibonacci_helper_method(solutions, current_num + 1, n)
end
