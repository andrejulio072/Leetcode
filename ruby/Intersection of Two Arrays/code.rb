def intersect(nums1, nums2)
  p1 = 0
  p2 = 0
  res = []
  nums1.sort!
  nums2.sort!
  while p1 < nums1.length && p2<nums2.length
      if nums1[p1] == nums2[p2]
          res.push(nums1[p1])
          p1 +=1
          p2 +=1
      elsif nums1[p1] < nums2[p2]
          p1 +=1
      elsif nums2[p2] < nums1[p1]
          p2 +=1
      end
  end
  res
end
