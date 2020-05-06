# Improved Fibonacci

# Time Complexity - 0n
# Space Complexity - 0n  (should be O(n))
# Hint, you may want a recursive helper method
# source: https://medium.com/@santiago.chamon/best-way-to-write-the-fibonacci-sequence-in-ruby-for-beginners-c78fd9dfcc44
# source: https://www.rubyguides.com/2015/08/ruby-recursion-and-memoization/

def fib_helper(n, solution, current)
  if n < 0
    raise ArgumentError
  end
  if n == 0 || n == 1
    return n
  end
  if current == n
    return solution[0] + solution[1]
  end
  temp = solution[1]
  solution[1] = solution[0] + solution[1]
  solution[0] = temp
  return fib_helper(n, solution, current + 1)
end

def fibonacci(n)
  return fib_helper(n, solution = [0,1], current = 2)
end