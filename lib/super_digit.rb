# Superdigit


# Given an integer, we need to find the super digit of the integer.

# If the number has only digit, then its super digit is that number. Otherwise, the super digit of x is equal to the super digit of the sum of the digits of x. For example, the super digit of 9875 will be calculated as:

# super_digit(9875) --> superdigit(9 + 8 + 7 + 5) = superdigit(29)
# super_digit(29)   --> superdigit(2 + 9) = superdigit(11)
# super_digit(11)   --> superdigit(1 + 1) = superdigit(2)
# super_digit(2) --> 2


# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
  
  # if n only has 1 digit, return n
  if n < 10
    return n
  else
  
    array = n.to_s.split('').map(&:to_i) # make number into array in string, then array, then back to integer
    sum = 0
    array.each do |i| # sum the numbers of the array
      sum += i
    end
    
  return super_digit(sum)
    
  end
end
  

# Optional 


# In this exercise we will build on the Superdigit concept. A refined superdigit is a determined by concatenating a number n a specific k number of times and then calculating the superdigit.

# For example if k = 3 and n = 148

# refined_superdigit(n, k) = superdigit(148148148) 
# = superdigit(1 + 4 + 8 + 1 + 4 + 8 + 1 + 4 + 8) 
# = superdigit(39) 
# = superdigit(3 + 9) 
# = superdigit (12) 
# = superdigit (1 + 2)
# = 3
# You can use your superdigit solution in the solution for refined_superdigit. Can you reduce the time complexity?


# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    