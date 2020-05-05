# Superdigit

# Time Complexity - O(n), where n is the number of digits in number
# Space Complexity - O(n), n+1 function calls are made 
def super_digit(n)

  # return n for all one digit n values 
  if n < 10
    return n
  end

  # add each digit, peeling of last one in place each time
  return super_digit(n % 10 + super_digit(n/10))

end
  


# Time Complexity - ?
# Space Complexity - ?
# def refined_super_digit(n, k)
    # OPTIONAL TODO: complete this method 
# end
    