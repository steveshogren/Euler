#The following iterative sequence is defined for the set of positive integers:
# 
#n -> n/2 (n is even)
#n -> 3n + 1 (n is odd)
# 
#Using the rule above and starting with 13, we generate the following sequence:
#13 - 40 - 20 - 10 - 5 - 16 - 8 - 4 - 2 - 1
# 
#It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# 
#Which starting number, under one million, produces the longest chain?
# 
#NOTE: Once the chain starts the terms are allowed to go above one million.

def problem14(num)
  biggest = 0
  start = 0
  for x in 1.. 1000000 do
    chain_len = p14(x, 0) 
    if chain_len > biggest
      biggest = chain_len
      start = x
    end
  end
  return start
end

def p14(num, count)
  count += 1
  if num == 1 
    return count
  elsif num.odd?  
    return p14((3 * num) + 1, count)
  else 
    return p14(num/2, count)
  end
end
