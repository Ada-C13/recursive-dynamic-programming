# Superdigit

# Time Complexity - O(log 10 n) => where n is a digit (log 10 n) 
# Space Complexity - O(log 10 n) => because of the system stack
def super_digit(n) 
  return super_helper(n)
end


def super_helper(n, sum = 0)
  return n if n < 10

  last_digit = n % 10  
  sum += (n / 10) + last_digit  

  return super_digit(sum) 
end 
  

# Time Complexity - O(log 10 n) => where n is "n * k" numbers of the call stack.
# Space Complexity - O(log 10 n) => because of the system stack
def refined_super_digit(n, k)
  return super_digit(n * k)
end