# Superdigit

# Time Complexity - O(n) - n is the length of the number, but there is also a consideration for the value of those numbers (9999 will need more calculating than 1000)
# Space Complexity - O(1) - space stays constant as n changes
def super_digit(n)
  return n if n <= 9
  
  until n < 10
    sum = 0
    sum += (n % 10)
    sum += (n / 10)
    n = sum
  end

  return sum
end
  

# Time Complexity - O(n * k)
# Space Complexity - O(1) - space stays constant as n or k change
def refined_super_digit(n, k)
  sum = 0

  k.times do
    sum += super_digit(n)
  end

  return super_digit(sum)
end