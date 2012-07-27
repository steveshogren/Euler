require 'mathn'
def Problem3(numberToFactor)
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
