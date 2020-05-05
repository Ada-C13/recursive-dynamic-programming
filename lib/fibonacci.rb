# Improved Fibonacci

# Fib(0) = 0 Fib(1) = 1
# Fib(n) = Fib(n-2) + Fib(n-1), for all n >= 2

# Restrictions:

# You cannot use a loop, use recursion.
# Your solution should be O(n) space complexity, due to the call stack.

# Time Complexity - ? O(n)
# Space Complexity - ?  (should be O(n)) 
# Hint, you may want a recursive helper method


def f_helper(old_num, new_num, n)
  
  temp = old_num + new_num 
  return temp if n == 2
  n = n - 1
  f_helper(new_num, temp, n)
end

def fibonacci(n)
  old_num = 0
  new_num = 1

  if n < 0
    raise ArgumentError
  end
  return n if n <= 1 

  return f_helper(old_num, new_num , n)  
end



