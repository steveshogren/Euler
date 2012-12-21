currentProblem = ARGV[0].to_i
# fileName = "~\\Ruby\\learning\\Euler#{currentProblem}.rb"
fileName = "Euler#{currentProblem}.rb"
require fileName

def time_method(method)
  beginning_time = Time.now
  ret = self.send(method)
  end_time = Time.now
  puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
  return ret
end

if __FILE__ == $0
  res  = time_method("test#{currentProblem}")
  if res == true 
    puts "Test Passes! #{res}"
  else
    puts "Test Failed #{res}"
  end
end

