# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
  #ar_new= [ ar[0], ar[0]+ar[1], ar[0]+ar[1] + ar[2]]
  #each element is the sum in i  with num[i]
  #ar_new[i]== sum(i-1)+ ar[i]
  arr_new=[]
  sum=0
  nums.each_with_index do |num, i|
      # sum(i) = nums[i]+ sum(i-1)
      sum += nums[i]
      arr_new.push(sum)
  end
  arr_new
end
