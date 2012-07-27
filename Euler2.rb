
def Problem2(numberToStopBefore)
  num1 = 1
  hold = num2 = 2
  sum = 0
  while num2 < numberToStopBefore do
    if num2 % 2 == 0
      sum += num2
    end
    hold = num2
    num2 = num1 + num2
    num1 = hold
  end
  puts "sum of even under #{numberToStopBefore}: #{sum}"
end

