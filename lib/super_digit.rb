# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
  n = (n).abs 
  if (n < 10) 
    return n
  end

  return super_digit(n.digits.sum)
end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    