# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
  return n if n < 10 
  
  sum = 0
  until n == 0
    sum += n % 10
    n /= 10
  end
  
  return super_digit(sum)
end

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    