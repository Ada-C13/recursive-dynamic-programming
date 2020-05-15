# Superdigit


# Time Complexity - 0(n) where n is the num of digits
# Space Complexity - 0(n^2)
def super_digit(n)
    return n if n < 10
  
  # convert n into array of strings
   n_array = n.to_s.chars
  # convert string array into integers
   integers = n_array.map(&:to_i)
   sum = integers.sum
  
  #  to make it recursive - call itself 
    super_digit(sum)
end
  
# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    