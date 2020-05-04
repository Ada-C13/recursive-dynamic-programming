# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n) 
# Proc source: https://www.alexstrick.com/blog/using-rubys-digits-method

def super_digit(n)
  return n if n <= 9

  digits = n.to_s.chars.map { |digit| digit.to_i }
  sum = digits.sum

  return super_digit(sum)
end

# Test cases
puts super_digit(9875)
puts super_digit(5)