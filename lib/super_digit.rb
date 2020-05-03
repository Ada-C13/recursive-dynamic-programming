# Superdigit

# Time Complexity - O(n). n is the number of digits 
# Space Complexity - O(n) b/c stack frames add on to the call stack
def super_digit(n)
  return n if n < 10
  sum = (n / 10) + n % 10
  return super_digit(sum)
end


# Time Complexity - O(n). n is the number of digits 
# Space Complexity - O(n) + O(sum) = O(n)
def refined_super_digit(n, k)
  sum = super_digit(n) * k
  return super_digit(sum)
end
    