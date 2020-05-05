# Improved Fibonacci

# Time Complexity - O(n), n being size of the number being passed in 
# Space Complexity - O(n), got rid of creating an array every time

def fibonacci(n)
  if n < 0
    raise ArgumentError.new('Cannot perform Fibonacci algorithim on numbers less than 0')
  end 

  # best case 
  if n == 0 || n == 1
    return n 
  end

  return fib_helper(0, 1, 2, n)
end

def fib_helper(twice_before, once_before, current, n)

  return n if n == 0 || n == 1
  
  return twice_before + once_before if current == n

  # value of current increases until it matches n
  # number that came once before current is now passed as the number that comes twice before current
  # value of 'once_before' is increased by adding the value of 'twice_before'
  return fib_helper(once_before, (once_before + twice_before), current + 1, n)
end
