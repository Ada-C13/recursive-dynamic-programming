# Superdigit

# Time Complexity - o(n + m)
# Space Complexity - o(1)

def super_digit(num)
  return super_digit_helper(0, num)
end 

def super_digit_helper(sum, num)
   if num < 10
      return num 
   end 

   while num % 10 != num  
    sum += num%10
    num = num/10
   end 

   if num%10 == num 
    sum += num
   end 
  
   return super_digit_helper(0, sum)
end 


# Time Complexity - o(n) where n = k
# Space Complexity -  o(1)

def refined_super_digit(n, k)
  num = 0
  while k > 0 
    
    if k > 1 
      power = ((k+k) - 3) + k
      num += (n * (10 ** power))
    else
      num += n
    end 

    k -= 1
  end 
  return super_digit_helper(0, num)
end


