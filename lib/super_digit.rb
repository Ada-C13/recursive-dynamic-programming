# Superdigit

# Time Complexity - O(log 10 n)
# Space Complexity - O(log 10 n)
def super_digit(n)
  if 10 > n
    return n
  end

  last_digit = n % 10
  sum = n / 10 + last_digit 
  
  return super_digit(sum)
end
  

# first attempt with build-in method
# def super_digit(n)
#   if 10 > n
#     return n
#   end

#   return super_digit(n.digits.sum)
# end
  

# Time Complexity - O(log 10 (n*k))
# Space Complexity - O(log 10 (n*k))

# not sure how to improve the complexity ....

def refined_super_digit(n, k)
  super_digit(n*k)
end