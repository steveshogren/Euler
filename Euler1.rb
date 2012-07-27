
def Problem1(number)
  sum = count = 0
  (number-1).times do
    count += 1
    if count % 3 == 0 or count % 5 == 0 
      sum += count
    end
  end
  puts "the sum is: #{sum}"
end
