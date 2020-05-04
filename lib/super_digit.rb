# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n^2)
def super_digit(n)
  return n if n < 10 
  
  # we need to get space complexity down
  # what does digits actually do?
  # it calculates n % 10, then n / 10
  # following that logic, maybe we can create a sum variable that will store the sum of the digits of each number, which will then be fed back into the recursive method
  # so we need to add n % 10 to the sum, then divide n by 10 each time
  # and this would repeat until n is 0
  
  return super_digit(n.digits.sum)
end

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    