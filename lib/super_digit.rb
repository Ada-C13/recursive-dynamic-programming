# Superdigit

# Time Complexity - o(n)
# Space Complexity - o(n)

def super_digit(n)
  return n if n < 10
  sum = super_digit_helper(n, 0)
  super_digit(sum)
end

def super_digit_helper(n, sum)
  return sum if n == 0
  sum += (n % 10)
  super_digit_helper(n / 10, sum)
end

# p super_digit(4)
# p super_digit(123)

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    