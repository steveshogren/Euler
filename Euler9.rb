#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#a**2 + b**2 = c**2

#For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.
#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

# m < n
# a = n**2 - m**2
# b = 2mn
# c = n**2 + m**2
def problem9(val) 
  a = 3
  b = 4
  c = 5
  mod = 1
  while true do
    sum = a + b + c
    puts "(#{a}, #{b}, #{c}) = #{sum}"
    mod += 1
    a = 8 * mod
    b = 15 * mod
    c = 17 * mod
    if sum > 1000 
      return
    end
  end
end
