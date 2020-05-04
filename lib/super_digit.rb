# Superdigit

# Time Complexity - Log10(n)
# Space Complexity - Log10(n) (not super sure on this one ¯\_(ツ)_/¯)

# Resources: https://www.geeksforgeeks.org/finding-sum-of-digits-of-a-number-until-sum-becomes-single-digit/
def super_digit(n)
  return n if n/10 == 0
  return super_digit(n/10 + n%10)
end
  

# Time Complexity - k*log10(n)
# Space Complexity - k*log10(n) 

# Resource: https://www.codechef.com/problems/KC004
def refined_super_digit(n, k)
  concatenated = "#{n}" * k
  return super_digit(concatenated.to_i)  
end
    