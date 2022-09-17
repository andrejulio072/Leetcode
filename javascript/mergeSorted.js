var merge = function(nums1, m, nums2, n) {
  var j=0
  var val=true
  for(var i=0; i<nums1.length&&j<n; i++){
      if(nums1[i]==0&&nums1){
          nums1[i]=nums2[j]
          j++
      }
      else if(nums1[i]!=0){
             val=false
      }
  }
  nums1.sort((a,b)=>a-b)
  return nums1
}
