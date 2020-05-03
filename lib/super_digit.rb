# Superdigit

# Time Complexity - ?
# Space Complexity - ?

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


# Time Complexity - ?
# Space Complexity - ?
# n.length = 4 -> 10000
# n.length > 3 -> * 1000
# n.length = 2 -> * 100 
# n.length = 1 -> * 10 

def refined_super_digit(n, k)

  num = 0
  while k > 0 

    if k == 3
      num += (n*1000000)
    elsif k == 2
      num += (n*1000)

    elsif k == 1
      num += n

    elsif k == 4
      num += (n*1000000000)
    end 

    k -= 1
  end 
  return super_digit_helper(0, num)
end
    
puts refined_super_digit(148, 3)