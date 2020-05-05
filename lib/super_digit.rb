# Superdigit

# Time Complexity - ? O(n)
# Space Complexity - ? O(n^2)
def super_digit(n)
  return n if n < 10
  super_digit(n.digits.sum)
end
  

# Time Complexity - ?O(n + k)
# Space Complexity - ? O(n)
def refined_super_digit(n, k)
  sum = (n.to_s * k).to_i
  p sum
  return super_digit(sum)
end
    