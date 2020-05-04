# Superdigit
# ```
# super_digit(9875) --> superdigit(9 + 8 + 7 + 5) = superdigit(29)
# super_digit(29)   --> superdigit(2 + 9) = superdigit(11)
# super_digit(11)   --> superdigit(1 + 1) = superdigit(2)
# super_digit(2) --> 2

# So the super_digit of `9875` is `2
# Time Complexity - O(n^2)?
# Space Complexity - O(n)


def super_digit(n)
  return n if n < 10
  return super_digit(n.digits.sum)
end



# For example if k = 3 and n = 148

# ```
# refined_superdigit(n, k) = superdigit(148148148) 
# = superdigit(1 + 4 + 8 + 1 + 4 + 8 + 1 + 4 + 8) 
# = superdigit(39) 
# = superdigit(3 + 9) 
# = superdigit (12) 
# = superd

# Time Complexity - based on super_digit's time complezit
# Space Complexity - ?
def refined_super_digit(n, k)
  number = (n.to_s * k).to_i
  super_digit(number)
end
    