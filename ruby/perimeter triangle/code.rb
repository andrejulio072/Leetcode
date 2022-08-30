# Leetcode: 976. Largest Perimeter Triangle.
# https://leetcode.com/problems/largest-perimeter-triangle/
# Runtime: 88 ms, faster than 33.33% of Ruby online submissions for Largest Perimeter Triangle.
# Memory Usage: 13.8 MB, less than 25.00% of Ruby online submissions for Largest Perimeter Triangle.
# @param {Integer[]} a
# @return {Integer}
def largest_perimeter(a)
  a.sort.reverse.each_cons(3).each { |(x, y, z)|
    # The each_cons method return subarray with each element: [[x,y,z]]
    return x + y + z if y + z > x
  }
  0
end

# Leetcode: 976. Largest Perimeter Triangle.
# https://leetcode.com/problems/largest-perimeter-triangle/
# Runtime: 116 ms, faster than 22.22% of Ruby online submissions for Largest Perimeter Triangle.
# Memory Usage: 13.9 MB, less than 25.00% of Ruby online submissions for Largest Perimeter Triangle.
# @param {Integer[]} a
# @return {Integer}
def largest_perimeter(a)
  z = a.sort.reverse
  (2...z.size).each do |i|
    return z[i - 2] + z[i - 1] + z[i] if z[i - 2] < z[i - 1] + z[i]
  end
  0
end

# Leetcode: 976. Largest Perimeter Triangle.
# https://leetcode.com/problems/largest-perimeter-triangle/
# Runtime: 176 ms, faster than 11.11% of Ruby online submissions for Largest Perimeter Triangle.
# Memory Usage: 12 MB, less than 25.00% of Ruby online submissions for Largest Perimeter Triangle.
# @param {Integer[]} a
# @return {Integer}
def largest_perimeter(z)
  z.sort_by! { |x| -x }
  (2...z.size).each do |i|
    return z[i - 2] + z[i - 1] + z[i] if z[i - 2] < z[i - 1] + z[i]
  end
  0
end

# Leetcode: 976. Largest Perimeter Triangle.
# https://leetcode.com/problems/largest-perimeter-triangle/
# Runtime: 124 ms, faster than 11.11% of Ruby online submissions for Largest Perimeter Triangle.
# Memory Usage: 11.9 MB, less than 25.00% of Ruby online submissions for Largest Perimeter Triangle.
# @param {Integer[]} a
# @return {Integer}
def largest_perimeter(z)
  z.sort!
  bigest, middle, smallest = z.size - 1, z.size - 2, z.size - 3
  while smallest >= 0
    return z[bigest] + z[middle] + z[smallest] if z[bigest] < z[middle] + z[smallest]
    bigest -= 1; middle -= 1; smallest -= 1
  end
  0
end
