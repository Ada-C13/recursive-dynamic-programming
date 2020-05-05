# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)
  
  if n < 10 
    puts n
    return n
  end

  sum = 0 

  while n > 0
    digit = n % 10
    n /= 10
    sum += digit
  end

  super_digit(sum)

end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    

# super_digit(12345)
# super_digit(1)