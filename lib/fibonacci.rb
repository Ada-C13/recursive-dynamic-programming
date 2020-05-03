# Improved Fibonacci

# Time Complexity -  O(n)
# Space Complexity - ? O(n) due to the callstack. The created array will always be 2 in length
# Hint, you may want a recursive helper method
def fibonacci(n)
  if n < 0
    raise ArgumentError
  end

  return fib_helper([0,1],n,2)
end

def fib_helper(fib_array,n,start)
  if n == 0 || n == 1
    return n
  elsif n == start
    return fib_array[0] + fib_array[1]
  end

  holder = fib_array[1]
  fib_array[1] = fib_array[0] + fib_array[1]
  fib_array[0] = holder

  start += 1

  return fib_helper(fib_array, n, start)

end
 
