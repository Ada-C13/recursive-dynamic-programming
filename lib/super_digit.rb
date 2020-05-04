# Superdigit

# Time Complexity - O(n) where n is the amout of times sum is greater than 10
# Space Complexity - O(n) where n is sum of digits + the amount of digits in n
def super_digit(n)
  return n if n < 10
  sum = super_digit_helper(n, 0)
  super_digit(sum)
end

def super_digit_helper(m, sum)
  return sum if m == 0
  sum += (m % 10)
  super_digit_helper(m / 10, sum)
end
  

# Time Complexity - Same as above
# Space Complexity - Same as above
def refined_super_digit(n, k)
  return n if n < 10 && k == 1
  sum = super_digit_helper(n, 0) * k
  return super_digit(sum)
end

    