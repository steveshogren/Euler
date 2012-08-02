def time_method(method, *args)
  beginning_time = Time.now
  ret = self.send(method, args[0])
  end_time = Time.now
  puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
  return ret
end

learningPath = '~\Ruby\learning\\'
currentProblem = 9
for i in 1...currentProblem+1 do
  require "~\\Ruby\\learning\\Euler#{i}.rb"
end

if __FILE__ == $0
  res  = time_method("problem#{currentProblem}", 0)
  if res == 13
    puts "Test Passes!"
  else
    puts "Test Failed #{res}"
  end
end


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
