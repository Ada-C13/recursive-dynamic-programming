# Superdigit

# Time Complexity - O(n), where n is number of digits
# Space Complexity - O(n), where n is number of digits, because of call stack
def super_digit(n)
    # base case
    return n if n < 10
    # recursive case
    return n%10 + super_digit(n/10) 
end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    