# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)

def fibonacci(n , solutions = [0,1], current = 2)
  raise ArgumentError.new ("n must be greater than or equal to 0") if n < 0
  return n if n == 0 || n == 1

  if current == n
    return solutions[0] + solutions[1] 
  end

  value = solutions[0] + solutions[1] 
  solutions[0] = solutions[1]
  solutions[1] = value
 
  return fibonacci(n , solutions, current + 1)
end



