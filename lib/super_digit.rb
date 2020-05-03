# Superdigit

# Time Complexity - ?
# Space Complexity - ?

#get the sum 
#pass back in 



def super_digit(num) #9875
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


# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    
puts super_digit(9875)