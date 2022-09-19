var search = function(nums, target) {

  let min = 0;
  let max = nums.length-1;

  while(min<=max)
      {
          let midIndex = Math.floor((min+max)/2);
          if(nums[midIndex] > target) max = midIndex - 1;
          else if(nums[midIndex] < target) min = midIndex + 1;
          else return midIndex;
      }
  return -1
  };
