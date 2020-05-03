# Superdigit

# Time Complexity - O(n+logn) n being number of digits, because sum method takes a O(n) time, and the recusrive method call on a worst case scenario like superdigit(1296) will cut the input in half when you call the recursive method superdigit(18) so logn
# Space Complexity - O(n) n being number of digits in a number
def super_digit(n)
   num_array = n.to_s.chars.map(&:to_i)
   sum = num_array.sum
   if sum <9
    return sum
   else 
    return super_digit(sum)
   end
   
end
  

# Time Complexity - O(k*n+logk*n) k*n being number of digits multiplied by k
# Space Complexity - O(k*n) n being the number of digits in a number
def refined_super_digit(n, k)
    num_array = n.to_s.chars.map(&:to_i)*k
    array_sum = num_array.sum 
    if array_sum <9 
       return array_sum
    else 
       return super_digit(array_sum)
    end  
end
    