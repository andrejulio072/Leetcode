# @param {Integer[]} nums
# @return {Integer}
def largest_perimeter(a)
  a.sort.reverse.each_cons(3).each{|(x,y,z)|
      return x+y+z if y+z > x
  }
 0
end

def largest_perimeter(a)
  z = a.sort.reverse

  (2...z.size).each do |i|
    a=z[i]
    b=z[i-1]
    c=z[i-2]
      return a+b+c if c < a+b
  end
  0
end
