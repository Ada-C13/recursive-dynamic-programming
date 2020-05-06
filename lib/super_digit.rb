# Superdigit

# Time Complexity 0(log (n)) n is the number itself
# Space Complexity 0(n)
def super_digit(n)
  while n > 9
    n = n % 10 + super_digit(n / 10)
  end
  return n
end
  

# Time Complexity - O(log (n)) n is is the n being passed in
# Space Complexity - O(log(n)) 
# source https://www.codechef.com/problems/KC004
def refined_super_digit(n, k)
  this_super_digit = super_digit(n)
  
  return super_digit(this_super_digit * k)
end
    