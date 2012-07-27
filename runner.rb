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

def time_method(method, *args)
  beginning_time = Time.now
  self.send(method, args[0])
  end_time = Time.now
  puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
end

learningPath = '~\Ruby\learning\\'
require learningPath + 'Euler1.rb'
require learningPath + 'Euler2.rb'
require learningPath + 'Euler3.rb'
require learningPath + 'Euler4.rb'
if __FILE__ == $0
  time_method(:Problem3, 600851475143)
end