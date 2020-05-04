# Superdigit

# Time Complexity - O(log 10 n) => where n is a digit and since n is divided by 10 in every recursive call
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
  

# Time Complexity - O(log 10 n) => where n is "n * k"
# Space Complexity - O(log 10 n) => because of the hidden system stack
def refined_super_digit(n, k)
  return super_digit(n * k)
end