var runningSum = function(nums){
  ar_new=[]
  sum=0
  for( let i=0; i<nums.length; i++){
    sum+=nums[i]
    ar_new.push(sum)
  };
  return ar_new
};
