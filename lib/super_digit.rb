# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
  return n if n < 10
  nums = n.digits
  super_digit(nums.sum)
end


# Time Complexity - ?
# Space Complexity - ?
# def refined_super_digit(n, k)

# end