# Improved Fibonacci

# Time Complexity - ?
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method
# def fibonacci(n)
#   # 0,1,1,2,3,5,8,13,21,34
#   raise ArgumentError.new ("n must be greater than or equal to 0") if n < 0
#   return fib_helper([0, 1], 2, n)
# end

# def fib_helper(solutions, current, n)
#   return n if n == 0 || n == 1
#   p solutions
#   p current
  
#   if current == n
#     return solutions[n - 1] + solutions[n-2]
#   end

#   solutions << solutions[current - 1] + solutions[current -2]
#   return fib_helper(solutions, current + 1, n)
# end
# 0,1,1,2,3 -> ([],0,5) start with
# -> 

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



