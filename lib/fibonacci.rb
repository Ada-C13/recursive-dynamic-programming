# Improved Fibonacci

# Time Complexity - ?
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method

# couldn't think of a new way 
def fibonacci(n)
  if n < 0 
    raise ArgumentError.new "n should be greather or equal to 0"
  end 
  return fibonacci_helper([0,1],2,n)
end


def fibonacci_helper(solution, current, n)
  return n if n == 0 || n == 1 

  if current == n 
    return solution[n-1] + solution[n-2]
  else
    solution << solution[current-1] + solution[current-2]
  end 

  return fibonacci_helper(solution,current+1, n)
  
end 
