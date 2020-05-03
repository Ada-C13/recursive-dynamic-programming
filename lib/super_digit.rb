# Superdigit

# Time Complexity - ?
# Space Complexity - ?

#Given an integer, we need to find the super digit of the integer.

# super_digit(9875) --> superdigit(9 + 8 + 7 + 5) = superdigit(29)
# super_digit(29)   --> superdigit(2 + 9) = superdigit(11)
# super_digit(11)   --> superdigit(1 + 1) = superdigit(2)
# super_digit(2) --> 2

def super_digit(n)
  return n if n < 10

  array = n.to_s.chars # ('9'  '8' '7'  '5')
  new_array = array.map(&:to_i) # [9 ,8, 7, 5]
  something = new_array.sum # 29

  super_digit(something)
end
# return n if n < 10
#   return super_digit(n.to_s.chars.map(&:to_i).sum)

#  In this exercise we will build on the Superdigit concept. 
#  A refined superdigit is a determined by concatenating 
#  a numbrer `n` a specific `k` number of times and then 
#  calculating the superdigit.  

#For example if k = 3 and n = 148

# Time Complexity - O(n)
# Space Complexity - O(1)
def refined_super_digit(n, k)
 
  return  super_digit((n.to_s * k).to_i) # ('148148148') => (148148148)
    
end

    