# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)

def improved_fibonacci(n)
  raise ArgumentError.new("Cannot return the fibonacci of a negative number.") if n < 0
  helper([0,1], n) 
end 

def helper(sequence, n)
  relevant_pair_sum = sequence[0] + sequence[1]
  sequence[0] = sequence[1]
  sequence[1] = relevant_pair_sum

  return n if n == 0 || n == 1
  return relevant_pair_sum if n == 2 
  return helper(sequence, n - 1)
end 

# Test cases
puts improved_fibonacci(5)
puts improved_fibonacci(7)
puts improved_fibonacci(11)
puts improved_fibonacci(-1)