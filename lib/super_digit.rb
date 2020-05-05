# Superdigit

# Time Complexity - ? O(n)
# Space Complexity - ? O(n)

#Given an integer, we need to find the super digit of the integer.

def super_digit(n)
  return n if n < 10

  chars_array = n.to_s.chars # ('9'  '8' '7'  '5')
  int_array = chars_array.map(&:to_i) # [9 ,8, 7, 5]
  sum = int_array.sum # 29

  super_digit(sum)
end


# Time Complexity - O(n)
# Space Complexity - O(1)
def refined_super_digit(n, k)
 
  return  super_digit((n.to_s * k).to_i) # ('148148148') => (148148148)
    
end

    