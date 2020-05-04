# Superdigit

# Time Complexity - O(n2)
# Space Complexity - O(2n)
def super_digit(n)
  nums = n.to_s.split('')
  
  total = (nums.map { |str| str.to_i }).sum
  return total if total < 10
  return super_digit(total)
end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  nums = n.to_s.split('') * k
  
  total = (nums.map { |str| str.to_i }).sum
  return total if total < 10
  return super_digit(total)
end
    