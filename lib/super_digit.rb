# Superdigit

# Time Complexity - log10(n)
# Space Complexity - log10(n)
def super_digit(n)
  # base case
  return n if n/10 == 0
  
  # recursive case
  return super_digit(n/10 + n%10)
end
  

# Time Complexity - k*log10(n)
# Space Complexity - k*log10(n)
def refined_super_digit(n, k)
  concatenated = "#{n}" * k
  return super_digit(concatenated.to_i)
end