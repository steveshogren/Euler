def Problem5(num) 
  current = num
  while true do
    isDivisible = true
    i = num 
    while i > 0 do
      isDivisible = (isDivisible and current % i == 0)
      if isDivisible == false
        break
      end
      i -= 1
    end
    if isDivisible 
      # puts "#{current} by #{i} is #{current % i} #{isDivisible}"
      puts current
      return current
    end
    current += 1
  end
end
