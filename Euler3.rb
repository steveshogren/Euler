
require 'mathn'
def Problem3(numberToFactor, beginning_time)
  div = 2
  while true do
    if (numberToFactor % div) == 0
      rightBranch = numberToFactor / div
      if rightBranch.prime?
        puts "largest prime factor is: #{rightBranch}"
        return rightBranch
      else
        div = 2
        numberToFactor = rightBranch
      end
    else
      div += 1
    end
  end
end

def NaiveProblem3(numberToFactor, beginning_time)
  numberToFactor = (numberToFactor.pop / 2).ceil
  puts numberToFactor 
  num = numberToFactor  
  while num > 0 do
    if num % 2 != 0 
      if numberToFactor % num == 0 
       if num.prime?
          puts "largest prime factor of #{numberToFactor} is: #{num}"
          return num
       end
      end
    end
    num-=1
    if num % 1000000 == 0
      test = num.to_f / numberToFactor.to_f
      test = test * 100
      end_time = Time.now
      puts "#{num}/#{numberToFactor} - #{test}% - #{(end_time - beginning_time)}"
    end
  end
end
