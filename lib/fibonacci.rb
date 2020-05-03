# Improved Fibonacci

# Time Complexity - O(1)
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method


def fibonacci(n)
  if n < 0 
    raise ArgumentError.new "n should be greather or equal to 0"
  end 
  return fibonacci_helper(0,1,2,n)
end


def fibonacci_helper(last_1, last_2, current , n )
  return n if n == 0|| n == 1 

  if current == n
    return last_1 + last_2
  else
    return fibonacci_helper(last_2,last_1 + last_2 ,current + 1 , n)
  end 
end 




# def fibonacci(n)
#   if n < 0 
#     raise ArgumentError.new "n should be greather or equal to 0"
#   end 
#   return fibonacci_helper([0,1],2,n)
# end


# def fibonacci_helper(solution, current, n)
#   return n if n == 0 || n == 1 

#   if current == n 
#     return solution[n-1] + solution[n-2]
#   else
#     solution << solution[current-1] + solution[current-2]
#   end 

#   return fibonacci_helper(solution,current+1, n)
  
# end 
