# Superdigit

# Time Complexity - O(n) - n is the number of digits existant in the number 
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

# Time Complexity - O(kn) - I used the super digit method made earlier and K here determines the "length" of how many integers will exist, though not completely confident
# Space Complexity - O(n) - even though I made a variable and converted to string then integer- this constant will drop 
def refined_super_digit(n, k)
  concatonated = ""
  k.times do |i|
    concatonated += n.to_s
  end

  super_digit(concatonated.to_i)
end

