require 'mathn'
def Problem4(digits) 
  highestFactor = (10**digits) - 1
  highestNumber = highestFactor * highestFactor 
  while true do
    if isPalindrome(highestNumber) and divisibleByNumberOrLower(highestNumber, highestFactor)
      puts "Highest palindrome of two #{digits}s numbers is : #{highestNumber}"
      return highestNumber
    end
    highestNumber -= 1
  end
end

def isPalindrome(num)
  org_num = num.to_s()
  return (num.to_s().reverse! == org_num)
end

def divisibleByNumberOrLower(num, divider)
  orig_divider = divider
  while divider > 1 do
    if (num % divider == 0) and num / divider < orig_divider
      puts "divisible by #{divider}"
      return true
    else
      divider -= 1
    end
  end 
  return false
end

