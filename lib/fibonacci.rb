# Improved Fibonacci

## Improved Fibonacci

# Earlier you saw how an array could be used to store Fibonacci numbers resulting in a time-complexity reduction from O(2<sup>n</sup>) to O(n).  Now we will take this a set further, because to find a given Fibonacci number, you only need to find the previous two numbers.  

# Reminder:

# Fib(0) = 0
# Fib(1) = 1

# Fib(n) = Fib(n-2) + Fib(n-1), for all n >= 2

# Restrictions:

#   - You cannot use a loop, use recursion.
#   - Your solution should be O(n) space complexity, due to the call stack.



# Recursive Solution from class

# Time Complexity - O(2^n)
# Space Complexity - O(n)
# Hint, you may want a recursive helper method
def fibonacci(n)
  if n < 0 
    raise ArgumentError.new "n must be greater than or equal to 0."
  end

  return n if n == 0 || n == 1
  return fib_helper([0, 1], 2, n)
end
  
def fib_helper(solutions, current, n)
 
  if current == n
    return solutions[n - 1] + solutions[n-2]
  end

  solutions << solutions[current - 1] + solutions[current -2]
  return fib_helper(solutions, current + 1, n)
end
 
