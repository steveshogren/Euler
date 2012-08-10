require 'mathn'
def problem10(upTo)
  sum = x = 0
  while x < upTo do
    if x.prime?
      sum += x
    end
    x += 1
  end

  return sum
end
