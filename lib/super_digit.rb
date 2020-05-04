# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
  #has to be a single digit 
  if n < 10 
    return n
  else 
    return super_digit(n.digits.sum)
  end 
  
  
end


# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  
end
