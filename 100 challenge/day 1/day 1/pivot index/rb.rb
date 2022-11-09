def pivot_index(nums)
  if nums.length == 1
    return 0
  end

  left_sum = 0
  right_sum = 0
  index = 0
  nums.each do |num|
    right_sum += num
  end
  right_sum -= nums[0]

 while left_sum != right_sum && index < nums.length -1
    left_sum += nums[index]
    index +=1
    right_sum -= nums[index]
  end

  if left_sum ==right_sum
    return index
  else
    return -1
  end
end
