# Superdigit

# Time Complexity - ?
# Space Complexity - ?

#Given an integer, we need to find the super digit of the integer.

# super_digit(9875) --> superdigit(9 + 8 + 7 + 5) = superdigit(29)
# super_digit(29)   --> superdigit(2 + 9) = superdigit(11)
# super_digit(11)   --> superdigit(1 + 1) = superdigit(2)
# super_digit(2) --> 2

def super_digit(n)
  if n < 10
    return n
  end

  array = n.to_s.chars # ('9'  '8' '7'  '5')
  new_array = array.map(&:to_i) # [9 ,8, 7, 5]
  something = new_array.sum # 29

  super_digit(something)
end

  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end

    