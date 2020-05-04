# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n^2)
def super_digit(n)
   return n if n < 10

   return super_digit(n.digits.sum)
end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  return super_digit(n) if k == 1

  k_n = (n.to_s * k).to_i
  
  return super_digit(k_n.digits.sum)
end
    