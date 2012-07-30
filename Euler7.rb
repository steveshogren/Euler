require 'mathn'
def problem7(xth_prime)
  currentPrimeCounter = 0
  currentNum = 1
  while true do
    if currentNum.prime? 
      currentPrimeCounter += 1
      if currentPrimeCounter == xth_prime
        puts currentNum 
        return currentNum
      end
    end
    currentNum += 1
  end

end
