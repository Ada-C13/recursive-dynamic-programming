# Superdigit

# Time Complexity - O(n) one loop based on the arraylength which is based on the input
# Space Complexity -O(n) since I make the digit_array and the call stack
def super_digit(n)

  digit_array = n.to_s.split('')

  sum = 0

  digit_array.each do |i|
    sum += i.to_i
  end

  if sum <= 9
    return sum
  end

  return super_digit(sum)
   
end
  

# Time Complexity - o(n*k)
# Space Complexity - same as above. There is another loop here but it would just make it O(2n) and we drop the constants
def refined_super_digit(n, k)
  sum = 0
  n.to_s.split('').each do |i|
    sum += i.to_i
  end

  return super_digit(sum * k)
end


# def refined_super_digit(n, k)
#   refined_n = ''

#   k.times do   
#     refined_n += n.to_s
#   end

#   return super_digit(refined_n)
# end
    