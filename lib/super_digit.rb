# Superdigit

# Time Complexity - O(log10n)
# Space Complexity - O(log10n)
def super_digit(n)
  return n if n < 10 
  
  sum = 0
  until n == 0
    sum += n % 10
    n /= 10
  end
  
  return super_digit(sum) # I had n.digits.sum here earlier, but since #digits creates a new array, I thought this solution would be less expensive
end

# Time Complexity - Still O(log10n)?
# Space Complexity - Still O(log10n)?
def refined_super_digit(n, k)
  sum = 0
  until n == 0
    sum += n % 10
    n /= 10
  end

  n = sum * k
  return super_digit(n)
end
    