def Problem6(num)
  sqr_of_sum = sum_of_sqr = 0
  for i in 1...num+1 do
    sqr_of_sum += i
    sum_of_sqr += i**2
  end
  x = (sqr_of_sum**2) - sum_of_sqr 
  puts x
  return x
end
