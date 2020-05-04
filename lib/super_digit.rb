# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)
  #use power of 10 shit to calculate each place
  #if it's an integer, it'll just chop off what's after the decimal point!

  #OR reduce to a string, etc
  nums = n.to_s.split('')
  
  total = (nums.map { |str| str.to_i }).sum
  return total if total < 10
  return super_digit(total)
end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    