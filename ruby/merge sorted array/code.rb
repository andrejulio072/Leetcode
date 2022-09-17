def merge(nums1, m, nums2, n)
  n.times {
      nums1.pop
  }
  nums2.each do |num|
      nums1.push(num)
  end

  nums1.sort!
end
