# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
  return n if n.digits.length == 1

  super_digit(n.digits.sum)
end

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  return (super_digit(n) * k)
end
    