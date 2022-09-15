def contains_duplicate(nums)
  hash = {}
  nums.each do |n|
    return true if hash[n]
    hash[n] = true
  end
  false
end
