class MegaGreeter
  attr_accessor :names

  #constructor
  def initialize(names = "world")
    @names = names
  end

  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      # @names is a list, iterate
      @names.each do |name|
        puts "hello #{name}!"
      end
    else
      puts "hellp #{@names}!"
    end
  end

  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      # join te list elements with commas
      puts "goodbye #{@names.join(", ")}. Come back soon!"
    else
      puts "goodbye #{@names}. Come back soon!"
    end
  end
end

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

def time_method(method, *args)
  beginning_time = Time.now
  self.send(method, args, beginning_time)
  end_time = Time.now
  puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
end

require 'mathn'
def Problem3(numberToFactor, beginning_time)
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

if __FILE__ == $0
  time_method(:Problem3, 600851475143)
  #time_method(:Problem3, 13000)
end
