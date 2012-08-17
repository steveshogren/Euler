#find the largest triangle number with over 500 factors
def problem12(num) 
  num = 100000000000000000
  tri = 0
  for x in 1.. num
    tri += x
    count = findFactorCount(tri)
    if count > 500
      puts "#{tri} : #{count}"
      return tri
    end
    if tri % 100 == 0 
      puts "#{tri} : #{count}"
    end
  end
end

require 'mathn'
def findFactorCount(numberToFactor)
  if numberToFactor == 1 || numberToFactor == 2 || numberToFactor == 3
    return 1
  end
  div = 2
  counts = []
  while true do
    if (numberToFactor % div) == 0
      rightBranch = numberToFactor / div
      if counts[div] == nil
        counts[div] = 0
      end
      counts[div] = counts[div] + 1
      if rightBranch.prime?
        if counts[rightBranch] == nil
          counts[rightBranch] = 0
        end
        counts[rightBranch] = counts[rightBranch] + 1
        sum = 1
        counts.each { |val| 
          if val != nil 
            sum *= val + 1 
          end
        }
        return sum
      else # start over
        div = 2
        numberToFactor = rightBranch
      end
    else # increment the left branch
      div += 1
    end
  end
end

