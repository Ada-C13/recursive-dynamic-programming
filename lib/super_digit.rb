# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
  if n < 10 
    return n 
  end 

  array = n.to_s.split("")
  answer = array.map{|n|n.to_i}.sum
  return super_digit(answer)
    
end
  

# Time Complexity - O(n)
# Space Complexity - O(n)
def refined_super_digit(n, k)

  array = k.to_s.split("")
  first = array.map{|k|k.to_i}.sum * n 

  if first < 10 
    return first 
  end 

  new_num = first 
  while new_num > 9
    new_array = new_num.to_s.split("")
    new_num = new_array.map{|n|n.to_i}.sum
  end 

  return new_num

end
    