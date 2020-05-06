# Superdigit

# Time Complexity - O(n) - dependent on length of number
# Space Complexity - O(n)
def super_digit(n)
  n = n.digits
  return n[0] if n.length == 1

  n = n.inject(0) {|sum, i|  sum + i }

  super_digit(n)
end
  

# Time Complexity - ?
# Space Complexity - ?
# def refined_super_digit(n, k)
    
# end
    