def can_make_arithmetic_progression(arr)
  arr.sort!
  diff = arr[1] - arr[0]
  n=arr.size
  (1...n).each do |i|
      return false if arr[i] - arr[i-1] != diff
  end
  true
end
