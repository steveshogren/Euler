#
#By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.
# 
#   3
#  7 4
# 2 4 6
#8 5 9 3
# 
#That is, 3 + 7 + 4 + 9 = 23.
# 
#Find the maximum total from top to bottom of the triangle below:
# 
#                            75
#                          95  64
#                        17  47  82
#                      18  35  87  10
#                    20  04  82  47  65
#                  19  01  23  75  03  34
#                88  02  77  73  07  63  67
#              99  65  04  28  06  16  70  92
#            41  41  26  56  83  40  80  70  33
#          41  48  72  33  47  32  37  16  94  29
#        53  71  44  65  25  43  91  52  97  51  14
#      70  11  33  28  77  73  17  78  39  68  17  57
#    91  71  52  38  17  14  91  43  58  50  27  29  48
#  63  66  04  68  89  53  67  30  73  16  69  87  40  31
#04  62  98  27  23  09  70  98  73  93  38  53  60  04  23

def problem18(r) 
  h = r.length
  sum = 0
  for i in 0..h-1 
    
  end
end

def get_r(r, x, y) 
  return r[x+1][y+1]
end

def get_l(r, x, y) 
  return r[x+1][y]
end

def test18()
r = [[3],
     [7, 4],
     [2, 4, 6],
     [8, 5, 9, 3]]
  results = problem18(r)
  expected = 23
  puts "expected:#{expected} actual:{results}"
  return (expected == 23)
end

def colorize(first, second)
  if (first+second) > 120 
    return "[ color=red ]"
  end
end

def graphVizIt(r)
  h = (r.length)-1
  ret = "" 
  for i in 0..h 
    levelH = (r[i].length)
    for o in 0..levelH-1
      first = r[i][o]
      if r[i+1] != nil
        second = r[i+1][o]
        if second != nil
          color = colorize(first,second)
          ret += "#{i+1}#{o}#{second} [label = #{second}]; "
          ret += "#{i}#{o}#{first} -> #{i+1}#{o}#{second} #{color}; "
        end
        second = r[i+1][o+1]
        if second != nil
          color = colorize(first,second)
          ret += "#{i+1}#{o+1}#{second} [label = #{second}]; "
          ret += "#{i}#{o}#{first} -> #{i+1}#{o+1}#{second} #{color}; "
        end
      end
      ret += "#{i}#{o}#{first} [label = #{first}]; "
      ret += "#{i}#{o}#{first}; "
    end
  end
  return ret
end

r = [[3],
     [7, 4],
     [2, 4, 6],
     [8, 5, 9, 3]]

b = [[75],
[95, 64], 
[17, 47, 82], 
[18, 35, 87, 10], 
[20, 4, 82, 47, 65], 
[19, 1, 23, 75, 3, 34], 
[88, 2, 77, 73, 7, 63, 67], 
[99, 65, 4, 28, 6, 16, 70, 92], 
[41, 41, 26, 56, 83, 40, 80, 70, 33], 
[41, 48, 72, 33, 47, 32, 37, 16, 94, 29], 
[53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14], 
[70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57], 
[91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48], 
[63, 66, 4, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31], 
[4, 62, 98, 27, 23, 9, 70, 98, 73, 93, 38, 53, 60, 4, 23]]

dotFile = 'dotTemp18.dot'
File.open(dotFile, 'w') {|f|
  inner = graphVizIt(b)
  text = "digraph G { #{inner} }"
  f.write(text)
}
output_file = 'graph18.png'
if File.exists?(output_file)
  File.delete(output_file)
end
`dot -Tpng #{dotFile} -o #{output_file}`
