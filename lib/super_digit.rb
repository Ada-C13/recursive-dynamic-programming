# Superdigit

# Time Complexity - O(n) where n is the amount of times the sum is greater than 10 
# Space Complexity - O(n) where n is the number of digits in n
def super_digit(n)
  return n if n < 10

  sum = 0 

  while n > 0
    digit = n % 10
    n /= 10
    sum += digit
  end

  super_digit(sum)

end
  

# Time Complexity - O(n)
# Space Complexity - O(n)
def refined_super_digit(n, k)
  refined = ""

  k.times do 
    refined += n.to_s 
  end 
  refined = refined.to_i

  super_digit(refined)

end

