# Superdigit

# Time Complexity - O(log10n) where n is num digits in n
# Space Complexity - O(log10n) where n is num digits in n
def super_digit(n)
  return n if n < 10

   new_num = 0

   n.to_s.length.times do |i|
    new_num += n%10
    n = n/10
   end

   return super_digit(new_num)
end
  







# Time Complexity - ?
# Space Complexity - ?
# def refined_super_digit(n, k)
    
# end
    