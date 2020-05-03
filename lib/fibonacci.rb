# Improved Fibonacci

# Time Complexity - o(n) 
# Space Complexity - o(n) (should be O(n))
# Hint, you may want a recursive helper method


def fib(solutions, current, n) 

  if n == 0 || n ==1 
    return n
  end 

  if current == n 
    return solutions[n-1] + solutions[n-2]
  end

  solutions << solutions[current-1] + solutions[current-2]

  return fib(solutions, current + 1, n)
end 




def fibonacci(n)
  if n < 0 
    raise ArgumentError
  end 

  return fib([0, 1], 2,  n)
end 
