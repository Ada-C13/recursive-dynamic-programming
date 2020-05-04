# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
    return n if n < 10 && n > 0 

    sum = 0 
    while n != 0 
        sum += n % 10
        n = n / 10
    end

    return super_digit(sum)
   
end
p super_digit(9875)
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)


    
end
p refined_super_digit(12, 3)
    